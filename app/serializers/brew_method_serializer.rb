class BrewMethodSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :equipment, :id, :deletable
  set_key_transform :camel_lower
end
