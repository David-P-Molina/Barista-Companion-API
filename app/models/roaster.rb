class Roaster < ApplicationRecord
    validates :name, :description, presence: true
    validates :name, uniqueness: true
    validates :year_founded, numericality: true
end
