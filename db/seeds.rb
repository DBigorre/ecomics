# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts 'destroy all comics...'
Comic.destroy_all

puts 'creating comics'

50.times do
  comic = Comic.new(
    name: Faker::DcComics.title,
    illustration: 'http://rockyrama.com/uploads/img/news/119-les-couvertures-de-comics-les-plus-cool-de-tous-les-temps/content/6538/noresize-rsz_74438007b5a7eca15882f0016e1dd5f5.jpg',
    house: 'DC Comics',
    serie: Faker::DcComics.hero,
    collector: Faker::Boolean.boolean(true_ratio: 0.2),
    price: Faker::Number.decimal(l_digits: 2),
    date: Faker::Date.backward(days: 10950 )
  )
  comic.save!
end
puts 'Finished!'

puts 'destroy users'
User.destroy_all

puts 'creating users'
User.create!(email: 'desiree@gmail.fr', password: 123456)
