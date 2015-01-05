// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

$(function() {
  $('.edit_reply').click(function() {
    // add edit display here
  })

  $(".arrow-up").click(function() {
    $(this).children('form').submit();
  });

  $(".arrow-down").click(function() {
    $(this).children('form').submit();
  });

  $(".vote").submit(function(event) {
    event.preventDefault();
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
  });

  $('.delete-reply').click(function() {
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
    });
  });

  $('#new_reply_snippet').submit(function(event) {
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
  });

  var languages = ["recent", "ruby", "javascript", "java", "python"];

  showPosts("recent");

  $('.language-btn').click(function() {
    var language = $(this).attr("id");
    showPosts(language);
  });

  function showPosts(language) {
    for(var i = 0; i < languages.length; ++i) {
      var divClass = '.' + languages[i] + '-posts';
      $(divClass).hide();
    }
    var divClass = '.' + language + '-posts';
    $(divClass).show();
  }

  function hideShow(buttonID, showItem){
  $(showItem).hide();
  $(buttonID).on('click', function(){
      $(showItem).slideToggle("slow", function(){
      });
    })
  }
  // hideShow($('#login-btn'),$('#login-div'));
  // hideShow($('#signup-btn'),$('#signup-div'));
  hideShow($('#create-reply-btn'),$('.create-reply'));
  $('#signup-div').hide();
  $('#signup-btn').click(function() {
    $('#signup-div').show();
    $('#login-div').hide();
  })
    $('#login-btn').click(function() {
    $('#login-div').show();
    $('#signup-div').hide();
  })
})




