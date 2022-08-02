class Listing < ApplicationRecord
  belongs_to :host, class_name: 'User'
  belongs_to :city
  has_many :bookings
  has_many :guests, through: :bookings

  validates :available_beds, :price,
            presence: true,
            numericality: { only_integer: true, greater_than: 0 }
  validates :description,
            presence: true,
            length: { minimum: 140 }
  validates :welcome_message, presence: true
end
