# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
Community.destroy_all


# Seeded Users Test
u1 = User.create(username: "Spiderman", password:"spidey", bio: "Being just your Friendly Neighborhood Spiderman. Likes to fight crime and swing from building top. Everything changed when I was bitten by a radioactive spider.")
u2 = User.create(username: "Batman", password:"batcave", bio: "Not Batman")
u3 = User.create(username: "Donkey", password:"donkey", bio: "Don't Vote for Elephant")
u4 = User.create(username: "Elephant", password:"elephant", bio: "Don't Vote for Donkey")
u5 = User.create(username: "Voice_of_Reason", password:"the people", bio: "Do what you want")
u6 = User.create(username: "New Branches", password:"music", bio: "Your Favorite Musichead")
u7 = User.create(username: "Lebron", password:"Lakers", bio: "King James")

c1 = Community.create(name: "Sports", description: "All sports stuff goes here!")
c2 = Community.create(name: "Other", description: "Miscellaneous stuffs")
c3 = Community.create(name: "Politics", description: "Let's Get Political")
c4 = Community.create(name: "Music", description: "For All Music Lovers Alike")
c5 = Community.create(name: "Art", description: "Everything is Art")
c6 = Community.create(name: "Coding", description: "The New StackOverFlow")

p1 = Post.create(name: "NBA is back!", description: "NBA is set to return on July 30th!", user: u7, community: c1)
p2 = Post.create(name: "Vote for me!", description: "The Title says it all!", user: u3, community: c3)
p3 = Post.create(name: "No, Vote for me!", description: "Don't Listen to the other posts!", user: u4, community: c3)
p4 = Post.create(name: "Honestly do what you want!", description: "Don't really on message boards to formulate and make your decisions for you, use your own thoughts and beliefs ;)!", user: u5, community: c3)
p5 = Post.create(name: "Museum Recs?", description: "Does Gotham even have museums?", user: u2, community: c5)
p6 = Post.create(name: "Is Crimefighting considered an art", description: "Serious responses only", user: u2, community: c5)
p7 = Post.create(name: "Favorite Superhero?", description: "Asking for a friend", user: u2, community: c2)
p8 = Post.create(name: "Hope you liked this page", description: "Hope you continue checking around!", user: u5, community: c2)

