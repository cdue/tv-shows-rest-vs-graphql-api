# TV Shows REST vs GraphQL API

This demo project, used for my talk called "Modernize your APIs, go for GraphQL!" is intended to show the differences between REST and GraphQL APIs.

## REST API

- First we have a basic REST API
- Then we'll add a GraphQL API based on the same data model

The REST API is accessible at [http://localhost:8080/api/v1/tvshows](http://localhost:8080/api/v1/tvshows)

*[Source code: `rest-api` git branch]* 

## GraphQL API
- The GraphQL API is added on top of the REST API version. 
- A Schema is described in the `tv-shows-schema.graphqls`. 
  It describes a few types, queries, and mutations.

The GraphQL API is accessible at [http://localhost:8080/graphql](http://localhost:8080/graphql)

And the GraphiQL tool is accessible at [http://localhost:8080/graphiql](http://localhost:8080/graphiql)

*[Source code: `graphql-query-mutation` git branch]* 

## GraphQL Subscription
- A `SchemaBuilder` class adds a Subscription root type to the previously created .graphls schema.
- Add reactive communication between client and server using web-sockets and RxJava  

_This demonstrates the subscription concept, but we'll need to:_
- replace server side database polling by real events fired for example from JPA `@PostPersist` and `@PostUpdate` callbacks.
- stop looking at AverageRating updates after web-socket disconnection.
- display multiple TvShows ratings on the web page (each line would be fed from a given web-socket)
- Use user sessions to send messages to (stop throwing average rating updates to everyone). 

*[Source code: `graphql-subscription` git branch]* 

## Appendix
_Every TV Show description has been taken from [JustWatch](https://www.justwatch.com) and [IMDB](http://www.imdb.com) websites_ 