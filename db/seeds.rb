# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = Restaurant.new(name:"a", address:"france", phone_number:"00000000", category: "french")
b = Restaurant.new(name:"b", address:"italy", phone_number:"00000000", category: "italian")
c = Restaurant.new(name:"c", address:"china", phone_number:"00000000", category: "chinese")
d = Restaurant.new(name:"d", address:"belgium", phone_number:"00000000", category: "belgian")
e = Restaurant.new(name:"e", address:"japanese", phone_number:"00000000", category: "japanese")

a.save
b.save
c.save
d.save
e.save
