# Roasters(Roastery/Brand)template = Roaster.find_or_create_by(name: '', description: '', year_founded: , website: '')
intellegentsia = Roaster.find_or_create_by(name: 'Intelligentsia', description: 'Intelligentsia is a specialty coffee pioneer, rising from humble Chicago roots to a company driven by curiosity, empowerment, and the never-ending quest for the most extraordinary coffee in the world.', year_founded: 1995, website: 'www.intelligentsia.com/')
wesley_andrews = Roaster.find_or_create_by(name: 'Wesley Andrews', description: 'Wesley Andrews was born from a love of finding the beauty in the everyday. We brew coffee and tea to make moments that complement truly filling conversation. We believe in the power of relationships, and their intrinsic role in bringing quality and equity to everyone—no matter what part of the industry they call home. All of our creations are made with intention, love, and a respect for our customers and producing partners at origin.', year_founded: 2016, website: 'www.wesleyandrews.cc')
stumptown = Roaster.find_or_create_by(name: 'Stumptown', description: "Stumptown Coffee Roasters is a coffee roaster and retailer based in Portland, Oregon, United States. The chain's flagship café and roastery opened in 1999.", year_founded: 1999, website: 'www.stumptowncoffee.com')
# Brew Method template = BrewMethod.find_or_create_by(name: '', description: '', equipment: '')
aeropress =BrewMethod.find_or_create_by(name: 'Aero-Press', description: 'The portable and lightweight AeroPress brews a sweet, full-bodied cup wherever you are: at home, camping or on a road trip. This particular method is best when you’re out in the field or if you don’t have a scale.', equipment: 'Aeropress Brewer, Aeropress Filter, Stirrer, Timer, Mug')
espresso = BrewMethod.find_or_create_by(name: 'Espresso', description: 'Brewing great espresso may take a little practice to master, and will definitely take some experimentation, which is all part of the fun. Grind, weight and time are key factors when brewing espresso, and most likely you’ll have to adjust one or more of these elements several times to get your shot dialed in.', equipment: 'Espresso Machine w/ Portafilter, Tamper, Timer, Scale, Knock Box, Mug, Grinder')
chemex = BrewMethod.find_or_create_by(name: 'Chemex', description: 'The trick with this brew is the infusion method and it is similar to drip coffee regarding body and taste. Chemex filters are 20-30% thicker than those used in other pour-over methods, which results in a slower brew and an exuberant coffee taste.', equipment: 'Chemex Filter, Stirrer, Chemex Pot, Scale, Grinder')
hario_pourover = BrewMethod.find_or_create_by(name: 'Hario V-60 (Pour-Over)', description: 'Nuanced and versatile, the Hario is an elegant brewer for those who want to perfect the pour. It’s great for folks who are looking for complete control over brewing extraction. The key here is to pour slow. The entire brew process for a 10oz mug takes about three minutes.', equipment: 'Hario V60 Brewer, Hario V60 Filter, Scale, Timer, Mug/Brewing Carafe, Grinder')
bee_house = BrewMethod.find_or_create_by(name: 'Bee House(Pour-Over)', description: 'A sleek and simple daily pour over, the Bee House is a favorite around here for its ease of use, and clean, sweet cup character. It’s a Japanese update on a classic paper cone brewer. Melitta Bentz invented the first version of this brewer in 1908, using her son’s blotting paper and a punctured brass pot. Today, you can find Melitta filters just about everywhere.', equipment: 'Bee House Single Cup Brewer, Melitta #4 Filter, Scale, Timer, Stirrer, Mug, Grinder')
cold_brew = BrewMethod.find_or_create_by(name: 'Filtron(Cold Brew)', description: 'There’s nothing better than cold brewed coffee on a hot summer day – or if you’re like us, any day, really. Cold Brew coffee is naturally smooth and sweet and less acidic than coffee brewed with hot water. The Filtron Cold Water Brewer is a simple way to make several cups of cold brew concentrate. Cold brewing takes between 12 – 24 hours (we recommend 16) but the payoff is huge. This batch should keep you buzzing for days. We recommend a ratio of 1:2 coffee concentrate to water over ice, adjusting to taste.', equipment: 'Filtron Brewer, Filtron Pad, Decanter, Coffee Guard, Stopper, Coffee Bowl, Water Bowl, Grinder')
french_press = BrewMethod.find_or_create_by(name: 'French Press', description: 'Easy to brew and super consistent, the French Press is very reliable. Its classic and well-engineered design hasn’t changed much since its invention in 1929, and it’s perfect for making multiple cups of heavy-bodied coffee in 4 minutes.', equipment: 'French Press Brewer, Wooden Spoon, Scale, Timer, Mug, Grinder')
siphon = BrewMethod.find_or_create_by(name: 'Siphon/Vacuum Pot', description: 'The vacuum pot, also called the syphon, is a beautiful and flashy way to make great coffee. Invented in Germany in the early 19th century, it’s a full immersion brewer that also employs a metal or cloth filter, so you end up with a full-bodied and clean cup. This brew method can be rather finicky, but with some practice can certainly be mastered.', equipment: 'Vacuum Pot, Burner, Metal/Cloth Filter, Spoon, Scale, Timer, Mug, Grinder')
kalita_wave = BrewMethod.find_or_create_by(name: 'Kalita Wave(Pour-Over)', description: 'With its stainless steel and wavy contours, the Kalita Wave wins over coffee and design enthusiasts alike. It’s a favorite pour over brew method for home use and it’s great on the go, too. The flat-bottom filter helps with even extraction while brewing. The key to mastering this brewer is the slow spiral pour.', equipment: 'Kalita Wave Brewer, Kalita Wave Filter, Spoon, Scale, Timer, Mug, Grinder')
# Coffee Beans template = CoffeeBean.find_or_create_by(name: '', roaster_id: , roast: '', whole_bean: , description: '', notes: '', blend_type: '', region: '', processing_method: '', drying_method: '')
otono = CoffeeBean.find_or_create_by(name: 'Otoño', roaster_id: intellegentsia.id, roast: '', whole_bean: true, description: 'Otoño marks the change of seasons with a blend of fresh-crop coffees from Ethiopia, Honduras, and Kenya, that together deliver the flavors of fall: plum, pear, and orange.', notes: 'Plum, Pear, and Orange', blend_type: 'Blend', region: 'Ethiopia, Honduras and Kenya', processing_method: '', drying_method: '')
black_cat_espresso = CoffeeBean.find_or_create_by(name: 'Black Cat Classic Espresso', roaster_id: intellegentsia.id, roast: '', whole_bean: true , description: 'This syrupy sweet espresso blend has been the staple of our lineup since the very beginning. Supreme balance and a wonderful sweetness make this a classic.', notes: 'Chocolate and Molasses', blend_type: 'Espresso', region: 'Brazil and Costa Rica', processing_method: '', drying_method: '')
ethiopia_metad= CoffeeBean.find_or_create_by(name: 'Ethiopia Metad Chelchele', roaster_id: intellegentsia.id, roast: '', whole_bean: true, description: 'This lot is comprised of indigenous Ethiopian varieties grown by smallholders in the Gedeo Zone, whose hallmark floral aromatics, pronounced stone fruit flavors, and relentless sweetness have made the Yirgacheffe name famous. It was processed with meticulous care by the Adinew family at the Metad washing station in Gedeb.', notes: 'Caramel and Stone Fruit', blend_type: 'Single-Origin', region: 'Ethiopia', processing_method: 'Washed', drying_method: 'Raised Bed')
kenya_othaya_chinga = CoffeeBean.find_or_create_by(name: 'Kenya Othaya Chinga', roaster_id: wesley_andrews.id, roast: '', whole_bean: true, description: 'In the cup we find a dark fruit note resembling black currant and a creamy body that reminds us of creme brulee—all while offering a zingy citrus acidity of fresh tangerine. The coffee is sweet and complex, highlighting just one of the many incredible coffee crops coming out of Nyeri.', notes: 'Creme Brulee and Fresh Tangerine', blend_type: 'Single-Origin', region: 'Kenya', processing_method: '', drying_method: '')
honduras_belen_gualcho = CoffeeBean.find_or_create_by(name: 'Honduras Belén Gualcho', roaster_id: wesley_andrews.id, roast: '', whole_bean: true, description: 'We are proud to offer this fresh new Honduran coffee from a collective of seven small farms in Belén Gualcho. In the cup we find a comforting malt chocolate, subtle green grape acidity and a honey sweetness akin to graham crackers!', notes: 'Malt Chocolate, Green Grape, and Honey', blend_type: 'Single-Origin', region: '', processing_method: '', drying_method: '')
hair_bender = CoffeeBean.find_or_create_by(name: 'Hair Bender', roaster_id: stumptown.id, roast: '', whole_bean: false, description: 'Hair Bender takes its name from a long-shuttered beauty parlor that was home to the first Stumptown cafe. It was the initial blend founder Duane Sorenson introduced and the recipe hasn’t changed. To this day, we have the original Hair Bender sign hanging in our headquarters, watching over as we roast. The clarity and complexity in Hair Bender comes from Indonesia’s rich textures, balanced by the classic flavors of Latin America and Africa. It’s the go-to espresso in all of our cafes and an all-around great cup of coffee.', notes: 'Citrus, Dark Chocolate, Raisin', blend_type: 'Espresso', region: 'Latin America and Africa', processing_method: '', drying_method: '')
trapper_creek_decaf = CoffeeBean.find_or_create_by(name: 'Trapper Creek Decaf', roaster_id: stumptown.id, roast: '', whole_bean: true, description: 'This one-of-a-kind decaf starts with meticulously sourced coffees with flavors and profiles that can stand up to decaffeination. We then gently remove the caffeine using the Swiss Water Process, a certified organic technique that relies on hot water, osmosis, and an activated charcoal filter. The result is a decaffeinated coffee that maintains its complex flavors and aromas and produces a lightly sweet but full-bodied cup that makes for an outstanding espresso or drip coffee.', notes: 'Dried Fruit, Graham Cracker, and Cocoa', blend_type: 'Blend(Decaf)', region: 'Latin America', processing_method: 'Swiss Water Processing', drying_method: '')
costa_rica_montes= CoffeeBean.find_or_create_by(name: 'Costa Rica Montes De Oro', roaster_id: stumptown.id, roast: '', whole_bean: false, description: "The Gamboa family of Montes de Oro rank among our longest-standing Direct Trade partners. Within this operation there’s both deep legacy and innovation—coffee farming in the Gamboa family that dates back to the 1800s. In the early 2000s, the Gamboas were among the first in Tarrazú to install their own micro-mill on the farm. This was part of a micro-mill revolution that would transform specialty coffee in Costa Rica, giving rise to a wave of producers who invested in their own post-harvest processing equipment to add value and traceability to the end product. We became Montes de Oro's first customer 2006, and we've cherished our relationship ever since.", notes: 'Apple, Apricot, and Caramel', blend_type: 'Single Origin', region: 'Costa Rica', processing_method: '', drying_method: '')
# Recipes template = Recipe.find_or_create_by(name: '', user_id: , brew_method_id: , temperature: , water_in_grams: , coffee_in_grams: , coffee_bean_id: , grind: '', time: , filter: ,roast_date: '')
test_recipe = Recipe.find_or_create_by(name: 'First Recipe', brew_method_id: hario_pourover.id, temperature: 212, water_in_grams: 3, coffee_in_grams: 33, coffee_bean_id: costa_rica_montes.id, grind: 'Medium', time: "3 Minutes", filter: true, roast_date: '')