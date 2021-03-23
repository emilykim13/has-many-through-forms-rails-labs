# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Comment.destroy_all
PostCategory.destroy_all
Category.destroy_all
User.destroy_all
Post.destroy_all


ct1 = Category.create(name: "Action")
ct2 = Category.create(name: "Sci-fi")
ct3 = Category.create(name: "Horror")
ct4 = Category.create(name: "Comedy")
ct5 = Category.create(name: "Romance")

u1 = User.create(username: "userdude1", email: "emaildude1")
u2 = User.create(username: "userdude2", email: "emaildude2")
u3 = User.create(username: "userdude3", email: "emaildude3")
u4 = User.create(username: "userdude4", email: "emaildude4")
u5 = User.create(username: "userdude5", email: "emaildude5")

p1 = Post.create(title: "A Title 1", content: "Some post content 1")
p2 = Post.create(title: "A Title 2", content: "Some post content 2")
p3 = Post.create(title: "A Title 3", content: "Some post content 3")
p4 = Post.create(title: "A Title 4", content: "Some post content 4")
p5 = Post.create(title: "A Title 5", content: "Some post content 5")


Comment.create(content: "Some random comment 1", user_id: u1, post_id: p1)
Comment.create(content: "Some random comment 2", user_id: u2, post_id: p2)
Comment.create(content: "Some random comment 1", user_id: u3, post_id: p3)
Comment.create(content: "Some random comment 1", user_id: u4, post_id: p4)
Comment.create(content: "Some random comment 1", user_id: u5, post_id: p5)

PostCategory.create(post_id: p1, category_id: ct1)
PostCategory.create(post_id: p2, category_id: ct2)
PostCategory.create(post_id: p3, category_id: ct3)
PostCategory.create(post_id: p4, category_id: ct4)
PostCategory.create(post_id: p5, category_id: ct5)



