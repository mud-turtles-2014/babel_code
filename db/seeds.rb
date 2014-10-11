# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ant = User.create(username: "aferragano", email: "aferragano@gmail.com", password:"password", password_confirmation:"password")
kat = User.create(username: "katherine", email: "katherine@gmail.com", password:"password", password_confirmation:"password")
User.create(username: "steph", email: "steph@gmail.com", password:"password", password_confirmation:"password")
Language.create(language: "Ruby")
Language.create(language: "JavaScript")
ant.original_snippets.create(title: "boop1", snippet: "boo boop booopity", description: "lalalallalal", language_id: 1)
kat.reply_snippets.create(snippet: "katkat", language_id: 2, description: "merpmerpppppp", original_snippet_id: 1)
