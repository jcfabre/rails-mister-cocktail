# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# lemon = Ingredient.create(name: "lemon")
# ice = Ingredient.create(name: "ice")
# mint_leaves = Ingredient.create(name: "mint leaves")

# bloody_mary = Cocktail.create(name: "Bloody Mary")
# mojito = Cocktail.create(name: "mojito")
# tequila_sunrise = Cocktail.create(name: "tequila sunrise")

cranberry_gin = Cocktail.new(name: "Cranberry Gin")
cranberry_gin_url = "http://laurencariscooks.com/1_lcc/wp-content/uploads/2016/12/Cranberry-Gin-Cocktail-2-2.jpg"
cranberry_gin.remote_photo_url = cranberry_gin_url
cranberry_gin.save

mojito = Cocktail.new(name: "Mojito")
mojito_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiFgWP56ABhuqLB-hh94_6-uDj7MFVxIFAfpuO8eTX0o8vyAmd"
mojito.remote_photo_url = mojito_url
mojito.save

white_russian = Cocktail.new(name: "white_russian")
white_russian_url = "https://253qv1sx4ey389p9wtpp9sj0-wpengine.netdna-ssl.com/wp-content/uploads/2018/08/WhiteRussian-CocktailBeers__Meg-Baggott_Styling_Dylan_Garret.jpg"
white_russian.remote_photo_url = white_russian_url
white_russian.save

gin_tonic = Cocktail.new(name: "gin_tonic")
gin_tonic_url = "https://www.cocktail-db.com/stat/img/1280/GinAndTonic.jpg"
gin_tonic.remote_photo_url = gin_tonic_url
gin_tonic.save

sex_on_the_beach = Cocktail.new(name: "sex_on_the_beach")
sex_on_the_beach_url = "https://www.cocktail-db.com/stat/img/1280/SafeSexOnTheBeach.jpg"
sex_on_the_beach.remote_photo_url = sex_on_the_beach_url
sex_on_the_beach.save

# article = Article.new(title: 'NES', body: "A great console")
# article.remote_photo_url = url
# article.save

# dose4cl = Dose.new(description: "4cl")
# dose6cl = Dose.new(description: "6cl")
# dose10cl = Dose.new(description: "10cl")


# dose4cl.ingredient = lemon
# dose4cl.cocktail = bloody_mary

# dose6cl.ingredient = ice
# dose6cl.cocktail = mojito

# dose10cl.ingredient = mint_leaves
# dose10cl.cocktail = tequila_sunrise

# dose4cl.save
# dose6cl.save
# dose10cl.save


# # ("a".."z").each do|letter|
# #   Cocktail.create(name: letter)
# # end
