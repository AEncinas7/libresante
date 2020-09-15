class Product < ApplicationRecord
  belongs_to :filter, required: false
end
