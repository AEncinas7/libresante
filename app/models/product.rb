class Product < ApplicationRecord
  belongs_to :filter
  has_one_attached :image
  translates :name, :description, :category, :detail, :catalog
end
