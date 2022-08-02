class User < ApplicationRecord
  has_many :listings, foreign_key: 'host_id'
  has_many :bookings, through: :listings
  has_many :stays, class_name: 'Booking', foreign_key: 'guest_id'

  validates :email,
            presence: true,
            uniqueness: true,
            format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone_number,
            presence: true,
            uniqueness: true,
            phone: true
  before_save { self.email = email.downcase }
  before_save { self.phone_number = Phonelib.parse(phone_number).full_international }
end
