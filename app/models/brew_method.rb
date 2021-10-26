class BrewMethod < ApplicationRecord
    has_many :recipes, dependent: :nullify
    validates :name, :description, :equipment, presence: true
    validates :name, uniqueness: true
end
