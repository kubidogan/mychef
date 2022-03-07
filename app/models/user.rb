class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :avatar, file_size: { less_than_or_equal_to: 5.megabytes }, file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }
  has_many :messages, dependent: :destroy
  has_many :resumes, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :reviewer_relationships, foreign_key: :reviewer_id, class_name: 'Review'
  has_many :reviewers, through: :reviewer_relationships, source: :reviewer

  has_many :reviewee_relationships, foreign_key: :reviewee_id, class_name: 'Review'
  has_many :reviewees, through: :reviewee_relationships, source: :reviewee

  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :following

  has_one_attached :avatar

  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end

  def is_following?(user_id)
    relationship = Follow.find_by(follower_id: id, following_id: user_id)
    return true if relationship
  end
end
