class Recipe < ApplicationRecord
  belongs_to :brew_method
  belongs_to :coffee_beans

  #name helper
  def username=(name)
    self.user = User.find_or_create_by(username: name)
  end
  def username
    self.roaster.try(:username)
  end
  def brew_method_name=(name)
    self.brew_method = BrewMethod.find_or_create_by(name: name)
  end
  def brew_method_name
    self.brew_method.try(:name)
  end
  def coffee_bean_name=(name)
    self.coffee_bean = CoffeeBean.find_or_create_by(name: name)
  end
  def coffee_bean_name
    self.coffee_bean.try(:name)
  end
end
