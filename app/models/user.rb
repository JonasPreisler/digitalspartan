class User < ApplicationRecord
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
  
  has_attached_file :avatar, styles: { medium: "700x500#", small: "200x200>", thumb: "180x180#" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
