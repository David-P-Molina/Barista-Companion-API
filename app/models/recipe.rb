class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :brew_method
  belongs_to :coffee_beans
end
