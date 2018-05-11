class Community < ApplicationRecord
  belongs_to :user
  has_many :posts
  has_many :tag


end