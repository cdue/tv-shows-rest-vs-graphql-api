package com.cdue.tvshows.graphql.controller;

import com.cdue.tvshows.graphql.util.GraphqlUtils;
import graphql.ExecutionResult;
import graphql.schema.GraphQLSchema;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.stereotype.Controller;

import java.util.concurrent.atomic.AtomicReference;

@Controller
public class SubscriptionWebSocketController {

    private static final Logger log = LoggerFactory.getLogger(SubscriptionWebSocketController.class);

    private final SimpMessageSendingOperations messagingTemplate;

    // Inject the updated GraphQL Schema (containing the subscription type)
    private final GraphQLSchema graphQLSchema;

    private final AtomicReference<Subscription> subscriptionRef = new AtomicReference<>();

    public SubscriptionWebSocketController(SimpMessageSendingOperations messagingTemplate, GraphQLSchema graphQLSchema) {
        this.messagingTemplate = messagingTemplate;
        this.graphQLSchema = graphQLSchema;

        // TODO: remove sessions and stop DB polling after disconnection (cancel subscriptionRef.request)
    }


    @MessageMapping("/tv-show-rating")
    @SendTo("/topic/rating")
    public void ratingSubscription(SimpMessageHeaderAccessor headerAccessor, @Payload String payload) {

        String sessionId = headerAccessor.getSessionId();

        ExecutionResult executionResult = GraphqlUtils.executeQuery(graphQLSchema, payload);

        Publisher<ExecutionResult> ratingStream = executionResult.getData();

        ratingStream.subscribe(new Subscriber<ExecutionResult>() {

            @Override
            public void onSubscribe(Subscription s) {
                log.debug("onSubscribe");
                subscriptionRef.set(s);
                request(1);
            }

            @Override
            public void onNext(ExecutionResult er) {
                log.debug("Sending rating update");
                Object ratingUpdate = er.getData();

                // messagingTemplate.convertAndSendToUser(sessionId, "/topic/rating", ratingUpdate);

                messagingTemplate.convertAndSend("/topic/rating", ratingUpdate);

                request(1);
            }

            @Override
            public void onError(Throwable t) {
                log.error("Subscription threw an exception", t);
                /*getSession().close();*/
            }

            @Override
            public void onComplete() {
                log.info("Subscription complete");
                /*getSession().close();*/
            }
        });
    }

    private void request(int n) {
        Subscription subscription = subscriptionRef.get();
        if (subscription != null) {
            subscription.request(n);
        }
    }
}
