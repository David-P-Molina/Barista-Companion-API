class BrewMethod < ApplicationRecord
    has_many :recipes, dependent: :delete_all
    validates :name, :description, :equipment, presence: true
    validates :name, uniqueness: true
end
