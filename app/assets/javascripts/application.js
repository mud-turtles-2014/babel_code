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
//= require_tree .

$(function() {
  $('.edit_reply').click(function() {
    // add edit display here
  })

  $('#new_reply_snippet').submit(function(event) {
    event.preventDefault();
    var data = $(event.target).serialize();
    $.ajax({
      type: "POST",
      url: "/reply_snippets",
      data: data
    }).done(function(response) {
      $("#all-replies-div").append(response);
    });
  });

  $('.ruby-posts').hide();
  $('.javascript-posts').hide();
  $('.ruby-button').click(function(){
    $('.ruby-posts').show();
    $('.javascript-posts').hide();
    $('.recent-posts').hide();
  });
  $('.javascript-button').click(function(){
    $('.javascript-posts').show();
    $('.recent-posts').hide();
    $('.ruby-posts').hide();
  });
  $('.recent-button').click(function(){
    $('.recent-posts').show();
    $('.javascript-posts').hide();
    $('.ruby-posts').hide();
  });


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




