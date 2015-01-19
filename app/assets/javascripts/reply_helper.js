function deleteReply() {
  var $form = $(this).parent().parent();
  $form.submit(function(event) {
    event.preventDefault();
    var url = $(event.target).attr('action');
    $.ajax({
    type: "DELETE",
    url: url
    }).done(function(response) {
      var selector = '.reply-' + response.reply_id;
      $(selector).remove();
    });
  })
}

function createReply(event) {
  event.preventDefault();
  event.stopPropagation();
  var data = $(event.target).serialize();
  $.ajax({
    type: "POST",
    url: "/reply_snippets",
    data: data
  }).done(function(response) {
    $("#all-replies-div").append(response);
  }).success(function() {
    $('#reply_snippet_description').val('')
    $('#reply_snippet_snippet').val('')
    $('.create-reply').hide();
    $('#reply-msg').html('<p>Your reply has been posted</p>');
  });
}