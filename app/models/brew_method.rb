class BrewMethod < ApplicationRecord
    has_many :recipes, dependent: :nullify
    has_many :coffee_beans, through: :recipe
    validates :name, :description, :equipment, presence: true
    validates :name, uniqueness: true
end
