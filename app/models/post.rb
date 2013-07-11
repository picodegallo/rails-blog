class Post < ActiveRecord::Base
  attr_accessible :text, :title, :image
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 5 }
  mount_uploader :image, ImageUploader

end
