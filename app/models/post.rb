class Post < ActiveRecord::Base
  validates :avatar, presence: true

  has_attached_file :avatar, styles: { :medium => "640x" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
