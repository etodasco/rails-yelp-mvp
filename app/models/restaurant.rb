class Restaurant < ApplicationRecord
  
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORY, message: "%{value} is not a valid size" }
end
