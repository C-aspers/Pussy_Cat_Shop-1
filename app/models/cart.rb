class Cart < ApplicationRecord
  validates :user_id, presence: true
  validates :item_id, presence: true
  
  belongs_to :user, optional: true
  belongs_to :item, optional: true

  after_update :price_total    #A verifier une fois le form fait

  def price_total
    price_total = 0
    user_cart = self.find(current_user)
    user_cart_items = self.where(user_id = user_cart)
    user_cart_items.each do |one_item|
      price_total = price_total + one_item.price
    end
  end

end
