class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :firstName, presence: true,
  length: {maximum: 20}
  validates :lastName, presence: true,
  length: {maximum: 20}
  validates :nickName, presence: true,
  uniqueness: true,
  length: {maximum: 20}

  has_many :items
  has_many :orders
  has_many :carts
  has_many :items, through: :carts
  has_many :items, through: :orders
end
