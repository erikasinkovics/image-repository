class Category < ApplicationRecord
  has_many :image_categories, dependent: :destroy
end
