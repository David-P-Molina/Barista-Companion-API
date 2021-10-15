class Roaster < ApplicationRecord
    has_many :coffee_beans
    validates :name, :description, presence: true
    validates :name, uniqueness: true
    validates :year_founded, numericality: true
    validate :year_founded_is_not_future_date

    #custom validation
    def year_founded_is_not_future_date
        if :year_founded.present? && :year_founded > Date.today.year
            errors.add(:year_founded, "Roaster Cannot be set in future!")
        end
    end
end
