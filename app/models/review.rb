class Review < ApplicationRecord
  belongs_to :Restaurant

  validates :content, presence: true
end
