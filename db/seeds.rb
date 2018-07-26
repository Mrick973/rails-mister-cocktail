require "json"
require "open-uri"
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


