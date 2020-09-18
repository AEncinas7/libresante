class Product < ApplicationRecord
  belongs_to :filter, required: false
  has_one_attached :image
end
