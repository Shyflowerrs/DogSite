# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "rest-client"
require "csv"
en = RestClient.get "https://api.thedogapi.com/v1/breeds?api_key=live_kSgrF1zzKaMF8oZriT5XC8mmdWY4AOeJFN2b8cjEsQS5y40A0Dz8rufbIeP5Rs7t"
facts = RestClient.get "https://dog-api.kinduff.com/api/facts"
facts_array = JSON.parse(facts)
dog_array = JSON.parse(en)

Breed.delete_all
Dog.delete_all
dog_array.each do |d|
  breed = Breed.find_or_create_by(
    bred_for:    d["bred_for"],
    breed_group: d["breed_group"]
  )

  next unless breed && breed.valid?

  dog = breed.dogs.find_or_create_by(
    name:        d["name"],
    temperament: d["temperament"],
    life_span:   d["life_span"],
    origin:      d["origin"],
    image_url:   d["image"]["url"]
  )
end

filename = Rails.root.join("db/quotes.csv") # build out the absolute path to file

csv_data = File.read(filename)
quotes = CSV.parse(csv_data, headers: true, encoding: "utf-8")

quotes.each do |fact|
  quote = Quote.find_or_create_by(
    dog_quote: fact["quotes"]
  )
end
