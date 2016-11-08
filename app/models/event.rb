class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings

  validates :name, :description, :price, :max_guests, :event_address, :user_id, presence: true
end
