class BrewMethod < ApplicationRecord
    validates :name, :description, :equipment, presence: true
    validates :name, uniqueness: true
end
