var stompClient = null;

function setConnected(connected) {
    $("#connect").prop("disabled", connected);
    $("#disconnect").prop("disabled", !connected);
    if (connected) {
        $("#tv-show-rating").show();
    }
    else {
        $("#tv-show-rating").hide();
    }
    $("#rating").html("");
}

function connect() {
    var socket = new SockJS('/ws-subscription');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
        setConnected(true);
        console.log('Connected: ' + frame);
        stompClient.subscribe('/topic/rating', function (rating) {
            console.log('STOMP message:', rating);
            showRating(JSON.parse(rating.body));
        });
    });
}

function disconnect() {
    if (stompClient !== null) {
        stompClient.disconnect();
    }
    setConnected(false);
    console.log("Disconnected");
}

function sendSubscriptionQuery() {

    var query = 'subscription { getTvShowRatingUpdates(tvShowId: '+ $("#tvShowId").val() + ') { \n' +
        '    averageRating\n' +
        '    nbVotes\n' +
        '    tvShow { \n' +
        '       id\n' +
        '    }\n' +
        '  }\n' +
        '}';

    var graphqlMsg = {
        query: query,
        variables: {}
    };

    stompClient.send("/app/tv-show-rating", {}, JSON.stringify(graphqlMsg));
}

function showRating(rating) {
    <!-- TODO: get tvShow id from rating and add a line by TvShow in the HTML table -->
    console.log('received message:', rating);
    $("#rating").html("<tr><td>Rating: " + rating.averageRating + " <br>Nb votes: " + rating.nbVotes + " </td></tr>");
}

$(function () {
    $("form").on('submit', function (e) {
        e.preventDefault();
    });
    $( "#connect" ).click(function() { connect(); });
    $( "#disconnect" ).click(function() { disconnect(); });
    $( "#send" ).click(function() { sendSubscriptionQuery(); });
});
