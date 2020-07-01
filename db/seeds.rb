# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all


# Seeded Users Test
u1 = User.create(username: "test 1", password:"1", bio: "first seeded user!")
u2 = User.create(username: "test 2", password:"a", bio: "second seeded user")
