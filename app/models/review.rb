class Review < ApplicationRecord
  belongs_to :reviewer, class_name: :user, foreign_key: :reviewer_id
  belongs_to :reviewee, class_name: :user, foreign_key: :reviewee_id

  validates :rating, presence: true
end

