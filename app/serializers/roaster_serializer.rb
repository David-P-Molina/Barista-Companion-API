class RoasterSerializer
  include JSONAPI::Serializer
  attributes :name, :id, :description, :year_founded
end
