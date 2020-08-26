class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :category, :address, presence: true
  
  validates :category, inclusion: {
    in: %w(japanese belgian italian chinese french),
    message: "%{value} is not a valid restaurant" 
  }
end
