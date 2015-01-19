var languages = ["recent", "ruby", "javascript", "java", "python"];

function showPosts(language) {
  for(var i = 0; i < languages.length; ++i) {
    var divClass = '.' + languages[i] + '-posts';
    $(divClass).hide();
  }
  var divClass = '.' + language + '-posts';
  $(divClass).show();
}