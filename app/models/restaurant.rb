# CLASS FOR YOUR RESTAURANT
class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"].freeze
  has_many :reviews, dependent: :destroy
  validates :name, length: { in: 2..26 }
  validates :name, uniqueness: true
  validates :address, length: { in: 2..75 }
  validates :category, inclusion: {in: Restaurant::CATEGORY, message:
  ('%{value} is not a valid category for your restaurant!') }
end
