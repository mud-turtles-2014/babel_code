Language.create!([
  {language: "Ruby"},
  {language: "JavaScript"}
])
OriginalSnippet.create!([
  {title: "boop1", snippet: "boo boop booopity", description: "lalalallalal", language_id: 1, user_id: 4, slug: nil},
  {title: "title", snippet: "function FirstReverse(str) { \r\n\r\n  var r = '';\r\n  for (var i = str.length - 1; i >= 0; i--) {\r\n    r += str[i];\r\n  }\r\n  \r\n  // code goes here\r\n  return r; \r\n            \r\n}", description: "description", language_id: 2, user_id: 2, slug: "title"},
  {title: "How to add two variables and print the result", snippet: "num1 = 5\r\nnum2 = 10\r\nresult = num1 + num2\r\nputs result", description: "I'm a little dumb at math but I think this works.  How about a JS version?", language_id: 1, user_id: 2, slug: "how-to-add-two-variables-and-print-the-result"},
  {title: "How do I upcase and reverse in JS?", snippet: "old_string = \"Ruby is cool\"\r\n\r\nnew_string = old_string.upcase.reverse", description: "I get this in Ruby, but I'm struggling to understand it in JavaScript.  Please help.", language_id: 1, user_id: 2, slug: "how-do-i-upcase-and-reverse-in-js"}
])
ReplySnippet.create!([
  {snippet: "katkat", description: "merpmerpppppp", language_id: 2, user_id: 5, original_snippet_id: 1},
  {snippet: "I'madumbasrr", description: "dumbass", language_id: 2, user_id: 2, original_snippet_id: 4},
  {snippet: "old_string = \"Ruby is cool\"\r\n\r\nnew_string = old_string.upcase.reverse", description: "Word", language_id: 1, user_id: 2, original_snippet_id: 4}
])
User.create!([
  {username: "aferragano", email: "aferragano@gmail.com", password_digest: "$2a$10$X4DRRUHUEo9.r7E9fxZj2eQSorkfT9CQCDAqZVLgj.Re.vVvdlNC."},
  {username: "katherine", email: "katherine@gmail.com", password_digest: "$2a$10$edNmw6FFX0k3XGBE7WiqQO9lGH8p2Jua9PY.1pR.tSK5cngz5r02i"},
  {username: "steph", email: "steph@gmail.com", password_digest: "$2a$10$ni3Wwn1z9diV5V1R0dd5ZORz4Llf5L6.Hw1jQI8qbbPThE4TipwDi"},
  {username: "aferragano", email: "aferragano@gmail.com", password_digest: "$2a$10$t7aq9f3PoxWlzk9gr9zAtOft2vhp0rWVCToOVpSziI5Rgre0RVPjW"},
  {username: "katherine", email: "katherine@gmail.com", password_digest: "$2a$10$mnl51WonrQ3rIepDlavOBeAGLcAfRtGWYLZF1jBaiei788A2qkNyC"},
  {username: "steph", email: "steph@gmail.com", password_digest: "$2a$10$.cpW2EMx2gHZzK8DOyvgF.VT10VwSuA5BbkOULM478WD/78QpDz7K"}
])
