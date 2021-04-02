# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Cat.create(birth_date: '2015/01/20', color: 'orange', name: 'Garfield', sex: 'M', description: 'A fat & lazy cat')

cat2 = Cat.create(birth_date: '2014/07/04', color: 'white', name: 'Sassy', sex: 'F', description: 'A very sassy cat')

cat3 = Cat.create(birth_date: '2013/12/25', color: 'grey', name: 'Christmas', sex: 'M', description: 'A very happy cat')


