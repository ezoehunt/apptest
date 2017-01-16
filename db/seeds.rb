# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# REMOVE USER before Heroku
User.create!([
  {email: "admin@example.com", encrypted_password: "$2a$11$DadZEGHzeKdO3kHYNuzppuJrBgvhqhI5avN9c/wD.0ms8u24adF7u", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-01-16 20:04:49", last_sign_in_at: "2017-01-16 20:04:49", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
