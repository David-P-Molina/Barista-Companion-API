# Roasters(Roastery/Brand)template = Roaster.find_or_create_by(name: '', description: '', year_founded: , website: '')

# Brew Method template = BrewMethod.find_or_create_by(name: '', description: '', equipment: '')

# Coffee Beans template = CoffeeBean.find_or_create_by(name: '', roaster_id: , user_id: , roast: '', whole_bean: , description: '', notes: '', blend_type: '', region: '', processing_method: '', drying_method: '',  roast_date: '')

# Recipes template = Recipe.find_or_create_by(name: '', user_id: , brew_method_id: , temperature: , water: '', coffee_bean_id: , grind: '', time: , filter: )