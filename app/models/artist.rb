class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos

  mount_uploader :image_url, ImageUploader

  validates :name, presence: true
end
