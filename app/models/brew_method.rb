class BrewMethod < ApplicationRecord
    has_many :coffee_beans
    validates :name, :description, :equipment, presence: true
    validates :name, uniqueness: true
end
