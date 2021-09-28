class RecipeSerializer
  include JSONAPI::Serializer
  attributes :name, :brew_method_id, :brew_method_name, :temperature, :water, :coffee_bean_id, :coffee_bean_name, :grind, :time, :filter, :bloom_time, :user_id, :username
end
