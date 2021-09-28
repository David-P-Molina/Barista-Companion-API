class BrewMethodSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :equipment
end
