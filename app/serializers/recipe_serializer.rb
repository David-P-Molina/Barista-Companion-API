class RecipeSerializer
  include JSONAPI::Serializer
  attributes :name, :brew_method_id, :brew_method_name, :temperature, :water_in_grams, :coffee_in_grams, :coffee_bean_id, :coffee_bean_name, :grind, :time, :filter, :bloom_time, :roaster_name
  set_key_transform :camel_lower 
end