class Restaurant < ApplicationRecord

  has_many :reviews, dependent: :destroy
  
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :phone_number, :address, presence: true
  validates :category, inclusion: { in: CATEGORY, message: "%{value} is not a valid size" }
end
