class Image < ApplicationRecord
  belongs_to :user
  has_many :image_categories, dependent: :destroy
  has_one_attached :photo
end
