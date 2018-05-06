# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'jonas.preisler@gmail.com.com', password: 'JonasP2', password_confirmation: 'JonasP2')

tag = Tag.create!(name: 'Automotive')
tag = Tag.create!(name: 'Business')
tag = Tag.create!(name: 'Design & Style')
tag = Tag.create!(name: 'Ecommerce')
tag = Tag.create!(name: 'Education')
tag = Tag.create!(name: 'Electronics')
tag = Tag.create!(name: 'Entertainment')
tag = Tag.create!(name: 'Financial')
tag = Tag.create!(name: 'Food & Drink')
tag = Tag.create!(name: 'Fun & Entertainment')
tag = Tag.create!(name: 'General Knowledge')
tag = Tag.create!(name: 'Health & Beauty')
tag = Tag.create!(name: 'Hobbies & Games')
tag = Tag.create!(name: 'Home & Garden')
tag = Tag.create!(name: 'Internet')
tag = Tag.create!(name: 'Knowledge')
tag = Tag.create!(name: 'Lifestyle')
tag = Tag.create!(name: 'Listings')
tag = Tag.create!(name: 'Practical')
tag = Tag.create!(name: 'Sports & Outdoor')
tag = Tag.create!(name: 'Travel')


size = Size.create!(name: '0-499')
size = Size.create!(name: '500-999')
size = Size.create!(name: '1k-4k')
size = Size.create!(name: '5k-9k')
size = Size.create!(name: '10k-19k')
size = Size.create!(name: '20k-49k')
size = Size.create!(name: '50k-99k')
size = Size.create!(name: '100k-199k')
size = Size.create!(name: '200k-499k')
size = Size.create!(name: '500k-1 mio')
size = Size.create!(name: '1 mio+')


