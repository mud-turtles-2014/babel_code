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
//= require show_posts
//= require reply_helper
//= require vote_helper

$(function() {
  $('#signup-div').hide();

  $('#login-btn').click(function() {
    $('#login-div').show();
    $('#signup-div').hide();
  })

  $('#signup-btn').click(function() {
    $('#signup-div').show();
    $('#login-div').hide();
  })

  showPosts("recent");

  $('.language-btn').click(function() {
    var language = $(this).attr("id");
    showPosts(language);
  });

  $(".arrow-up").click(function() {
    $(this).children('form').submit();
  });

  $(".arrow-down").click(function() {
    $(this).children('form').submit();
  });

  $(".vote").submit(createVote);

  $('.delete-reply').click(deleteReply);

  $('#new_reply_snippet').submit(createReply);

})