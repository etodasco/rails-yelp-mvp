class Restaurant < ApplicationRecord
  
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  value = gets.chomp
  validates :name, :phone_number, :address, :category, inclusion: { in: CATEGORY, message: "#{value} is not a valid category" }
end
