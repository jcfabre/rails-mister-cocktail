# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")

bloody_mary = Cocktail.create(name: "Bloody Mary")
mojito = Cocktail.create(name: "mojito")
tequila_sunrise = Cocktail.create(name: "tequila sunrise")


dose4cl = Dose.new(description: "4cl")
dose6cl = Dose.new(description: "6cl")
dose10cl = Dose.new(description: "10cl")


dose4cl.ingredient = lemon
dose4cl.cocktail = bloody_mary

dose6cl.ingredient = ice
dose6cl.cocktail = mojito

dose10cl.ingredient = mint_leaves
dose10cl.cocktail = tequila_sunrise

dose4cl.save
dose6cl.save
dose10cl.save


("a".."z").each do|letter|
  Cocktail.create(name: letter)
end
