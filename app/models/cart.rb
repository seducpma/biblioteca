class Cart < ActiveRecord::Base
  has_many :cart_items
  has_many :dpus, :through => :cart_items

end
