class CoffeeBean < ApplicationRecord
  belongs_to :roaster
  has_many :recipes, dependent: :nullify
  has_many :brew_methods, through: :coffee_beans
  validates :name, :roaster_id, :description, presence: true
  validates :name, uniqueness: true

  #name helper
  def roaster_name=(name)
    self.roaster = Roaster.find_or_create_by(name: name)
  end
  def roaster_name
    self.roaster.try(:name)
  end
end
