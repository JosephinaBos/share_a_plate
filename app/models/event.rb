class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :max_guests, presence: true
  validates :event_address, presence: true
  validates :user_id, presence: true
end
