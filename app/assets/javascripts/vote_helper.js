function createVote(event) {
  event.preventDefault();
  debugger;
  var data = $(event.target).serialize();
  $.ajax({
    type: "POST",
    url: "/votes",
    data: data,
    dataType: "json"
  }).done(function(response) {
    var div = response.snippet_class + "-" +response.snippet_id + "-" + "votes";
    $('#' + div).html('<p>' + response.vote_count + '</p>');
  });
}