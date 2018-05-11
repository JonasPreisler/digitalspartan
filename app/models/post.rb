class Post < ApplicationRecord
  acts_as_votable
  belongs_to :user
  belongs_to :collection
  belongs_to :category
  has_many :comments
  belongs_to :size
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :community

  mount_uploader :image, ImageUploader
  mount_uploader :screenshot, ScreenshotUploader
  mount_uploader :screenshot2, ScreenshotUploader
  mount_uploader :screenshot3, ScreenshotUploader
end