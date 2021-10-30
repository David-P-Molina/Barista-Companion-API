class CoffeeBeanSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :roaster_name, :roaster_id, :roast, :description, :notes, :blend_type, :region, :processing_method, :drying_method, :deletable
  set_key_transform :camel_lower 
end