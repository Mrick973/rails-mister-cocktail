

require "json"
require "open-uri"

Cocktail.create(name: "Dirty")
Cocktail.create(name: "Gibson")
Cocktail.create(name: "Gimlet")

Cocktail.create(name: "Gin fizz")
Cocktail.create(name: "Gin")
Cocktail.create(name: "Gin Sour")

Cocktail.create(name: "Greyhound")
Cocktail.create(name: "Martini")
Cocktail.create(name: "Pimm")

Cocktail.create(name: "Singapore")
Cocktail.create(name: "Tom Collins")
Cocktail.create(name: "Sloe")


Dose.create(description: "10cl")
Dose.create(description: "10cl")
Dose.create(description: "10cl")

Dose.create(description: "10cl")
Dose.create(description: "10cl")
Dose.create(description: "10cl")

Dose.create(description: "10cl")
Dose.create(description: "10cl")
Dose.create(description: "10cl")

Dose.create(description: "10cl")
Dose.create(description: "10cl")
Dose.create(description: "10cl")

# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
 puts "#{Ingredient.count}"
open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list") do |response|
	puts "Generate Seed"
	response.each do |string|
		json = JSON.parse(string)
	json["drinks"].each do |element|
		Ingredient.create!(name: element["strIngredient1"])
	end
end
end
 puts "#{Ingredient.count}" 


puts "#{Dose.description}"


# lime = Ingredient.create!(name: 'lime')
# ice = Ingredient.create!(name: 'ice')
# mé = Ingredient.create!(name: 'cachaça')
# rum = Ingredient.create!(name: 'rum')
# mint = Ingredient.create!(name: 'mint leaves')
# sugar = Ingredient.create!(name: 'sugar')

# caipirinha = Cocktail.create!(name: 'Caipirinha')
# mojito = Cocktail.create!(name: 'Mojito')

# Dose.create!(cocktail: caipirinha, ingredient: lime, description: 'limão')
# Dose.create!(cocktail: caipirinha, ingredient: ice, description: 'gelo')
# Dose.create!(cocktail: caipirinha, ingredient: mé, description: 'pinga da boa')
# Dose.create!(cocktail: caipirinha, ingredient: sugar, description: 'açúcar')
# Dose.create!(cocktail: mojito, ingredient: lime, description: 'limão')
# Dose.create!(cocktail: mojito, ingredient: ice, description: 'gelo')
# Dose.create!(cocktail: mojito, ingredient: rum, description: 'rum do pirata')
# Dose.create!(cocktail: mojito, ingredient: sugar, description: 'açúcar')
# Dose.create!(cocktail: mojito, ingredient: mint, description: 'folhinha de hortelã')