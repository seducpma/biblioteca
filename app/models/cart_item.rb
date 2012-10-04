class CartItem < ActiveRecord::Base
  belongs_to :dpu
  belongs_to :cart

end
