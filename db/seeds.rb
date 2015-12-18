# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.delete_all
Movie.create! id: 1, title: "Ant-Man", price: 19.99, active: true, category_id: 2
Movie.create! id: 2, title: "Hunger Games : La révolte - 2ème partie", price: 15.99, active: true, category_id: 3
Movie.create! id: 3, title: "Jurassic World", price: 19.99, active: true, category_id: 1
Movie.create! id: 4, title: "Ant-Man", price: 19.99, active: true, category_id: 2
Movie.create! id: 5, title: "Hunger Games : La révolte - 2ème partie", price: 15.99, active: true, category_id: 3
Movie.create! id: 6, title: "Jurassic World", price: 19.99, active: true, category_id: 1

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

Category.delete_all
Category.create! id: 1, name: "action"
Category.create! id: 2, name: "aventure"
Category.create! id: 3, name: "science-fiction"

User.delete_all
User.create! id: 1, email: "user@exemple.com", password: "password"


Admin.delete_all
Admin.create! id: 1, email: "admin@exemple.com", password: "password",