class ImageCategory < ApplicationRecord
  belongs_to :category
  belongs_to :image
end
