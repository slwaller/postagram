class Comment < ActiveRecord::Base
  validates_length_of :content, :minimum => 3, :maximum => 250, :allow_blank => false

  belongs_to :user
  belongs_to :post
end
