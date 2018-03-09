class Collection < ApplicationRecord
  belongs_to :user
  has_many :posts

  has_attached_file :image, styles: { cover: "850x285#", small: "350x250>", thumb: "80x80>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
