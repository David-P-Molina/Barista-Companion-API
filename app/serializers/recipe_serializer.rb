class RecipeSerializer
  include JSONAPI::Serializer
  attributes :name, :date_attempted, :brew_method_id, :brew_method_name, :coffee_bean_id, :coffee_bean_name, :roaster_name, :roast_date, :grind, :coffee_in_grams, :water_in_grams, :temperature, :filter, :time, :bloom_time, :notes, :deletable
  set_key_transform :camel_lower 
end