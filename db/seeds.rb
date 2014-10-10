# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "aferragano", email: "aferragano@gmail.com", password:"password", password_confirmation:"password")
User.create(username: "katherine", email: "katherine@gmail.com", password:"password", password_confirmation:"password")
User.create(username: "steph", email: "steph@gmail.com", password:"password", password_confirmation:"password")
