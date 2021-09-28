class BrewMethodSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :equipment
  set_key_transform :camel_lower
end
