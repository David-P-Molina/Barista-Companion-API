require 'byebug'
class Recipe < ApplicationRecord
  belongs_to :brew_method
  belongs_to :coffee_bean
  validates :name, :brew_method_id, :temperature, :time, :filter, :name, :brew_method_id, :grind, presence: true
  validates :temperature, :water_in_grams, numericality: { only_integer: true }
  # validates :bloom_time, :time, numericality: { only_integer: true }
  validate :temperature_cannot_exceed_boiling

  #custom validations 
  
  def temperature_cannot_exceed_boiling
    if temperature.present? && temperature > 212 
      errors.add(:temperature, "Water temperature cannot exceed boiling point!")
    end
  end
  def 
  #name helper
  def brew_method_name=(name)
    self.brew_method = BrewMethod.find_or_create_by(name: name)
  end
  def brew_method_name
    self.brew_method.try(:name)
  end
  def coffee_bean_name=(name)
    self.coffee_bean = CoffeeBean.find_or_create_by(name: name)
  end
  def coffee_bean_name
    self.coffee_bean.try(:name)
  end
  def roaster_name
    self.coffee_bean.try(:roaster_name)
  end
end
