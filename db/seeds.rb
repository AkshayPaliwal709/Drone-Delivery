# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Drone.create(name:'No Drone Assigned', status:1)
Drone.create(name:'Iron Man', status:1)
Drone.create(name:'Thor', status:1)
Drone.create(name:'Flash', status:1)
Drone.create(name:'Captin America', status:1)
Drone.create(name:'Batman', status:1)
Drone.create(name:'Wonderwoman', status:1)


Product.create(name:'Magic Wand', category: 3)
Product.create(name:'Harry Potter Cup', category: 3)
Product.create(name:'Linkin Park Poster', category: 3)
Product.create(name:'Mac Book Pro', category: 3)

Person.create(name:'Narendra Modi', address:'7, Lok Kalyan Marg Delhi', phonenumber:'7788990022')
Person.create(name:'Akshay Paliwal', address:'709 New Delhi Apartment', phonenumber:'7788990021')