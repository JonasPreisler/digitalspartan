class User < ApplicationRecord
  require 'carrierwave/orm/activerecord'
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :community
  has_one :lab
  has_many :collections, dependent: :destroy
  validates_uniqueness_of :name
end
