class CoffeeBean < ApplicationRecord
  belongs_to :roaster
  belongs_to :user
end
