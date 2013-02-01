class Post < ActiveRecord::Base
  attr_accessible :course_name, :course_number, :love_reason, :vote_count

  before_save { |post| post.vote_count ||= 0 }

  default_scope order: 'posts.vote_count DESC'

  validates :course_number, :presence => true

  validates :course_name, :presence => true

  validates :love_reason, :presence => true
end
