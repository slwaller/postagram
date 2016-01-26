class User < ActiveRecord::Base
  acts_as_voter
  validates :user_name, presence: true, length: { minimum: 4, maximum: 16 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: '152x152#' }  
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/  

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
