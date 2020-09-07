class Image < ApplicationRecord
  belongs_to :user
  has_many :image_categories, dependent: :destroy
end
