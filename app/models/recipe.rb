require 'byebug'
class Recipe < ApplicationRecord
  belongs_to :brew_method
  belongs_to :coffee_bean
  validates :name, :brew_method_id, :temperature, :time, :name, :coffee_in_grams, :brew_method_id, :grind, presence: true
  validates :temperature, :water_in_grams, :bloom_time, :time, :elevation, numericality: { only_integer: true }
  validate :temperature_cannot_exceed_boiling, :roast_date_is_not_future_date, :roast_date_cannot_be_after_brew_date



  #custom validations
  def roast_date_is_not_future_date
    if roast_date.present? && roast_date.to_i > Date.today.year
        errors.add(:roast_date, "Roast date can't be set in the future!")
    end
  end 
  def roast_date_cannot_be_after_brew_date
    if date_attempted.present? && roast_date.present? && date_attempted < roast_date
      errors.add(:roast_date, "Cannot Brew Beans that have not been roasted!")
    end
  end
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
