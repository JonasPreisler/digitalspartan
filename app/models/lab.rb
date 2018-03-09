class Lab < ApplicationRecord
  has_many :communities
  has_many :tags
  has_many :labs
  has_many :users
end
