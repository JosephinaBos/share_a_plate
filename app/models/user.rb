class User < ApplicationRecord
  has_many :bookings, through: :events
  has_many :events
  has_many :bookings
  has_many :received_reviews, class_name: :review, foreign_key: :reviewer_id
  has_many :written_reviews, class_name: :review, foreign_key: :reviewee_id

  validates :email_address, :password, :first_name, :last_name, :bank_account, presence: true
  validates :email_address, uniqueness: true

  # roles. to state if user is guest / host and use that for reviews

  # maybe need to make seperate host / guest reviewer / reviewee roles? (so 4 in total)

end
