class Filter < ApplicationRecord
  has_many :products, dependent: :destroy
  has_one_attached :image
  translates :name
end
