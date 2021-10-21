class CoffeeBeanSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :roaster_name, :roaster_id, :roast, :whole_bean, :description, :notes, :blend_type, :region, :processing_method, :drying_method
  set_key_transform :camel_lower 
end