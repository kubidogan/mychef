class Review < ApplicationRecord
  belongs_to :reviewee, class_name: 'User', foreign_key: :reviewee_id
  belongs_to :reviewer, class_name: 'User', foreign_key: :reviewer_id

  # validates :rating, length: { minimum: 1 }
  # validates :comment, presence: true
end
