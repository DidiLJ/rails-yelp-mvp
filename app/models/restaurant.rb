class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :address, presence: true
  validates :name, presence: true
end
