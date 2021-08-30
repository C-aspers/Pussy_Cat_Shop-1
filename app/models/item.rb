class Item < ApplicationRecord
  validates :title, presence: true,
  length: {maximum: 20}
  validates :description, presence: true,
  length: {minimum: 15},
  length: {maximum: 140}
  validates :price, presence: true
  validates :user_id, presence: true

  belongs_to :user, optional: true
  has_many :orders
  has_many :carts
  has_one :user, through: :carts
  has_one :user, through: :orders
end
