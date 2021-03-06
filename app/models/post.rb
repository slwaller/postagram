class Post < ActiveRecord::Base
  acts_as_votable

  validates :avatar, presence: true
  validates :user_id, presence: true
  

  has_attached_file :avatar, styles: { :medium => "640x" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  belongs_to :user
  has_many :comments, dependent: :destroy
end
