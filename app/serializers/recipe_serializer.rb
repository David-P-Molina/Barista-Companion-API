class RecipeSerializer
  include JSONAPI::Serializer
  attributes :name, :brew_method_id, :temperature, :water, :coffee_bean_id, :grind, :time, :filter, :bloom_time
end
