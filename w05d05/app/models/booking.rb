class Booking < ApplicationRecord
  validate :available?
  belongs_to :listing
  belongs_to :guest, class_name: 'User'

  def available?
    Booking.where(listing_id == listing) do |booking|
      next if booking.checkin > checkout || booking.checkout < checkin

      errors.add(:checkin, :checkout, 'The listing is not available during the specified dates')
    end
  end

  private

  def length_of_stay
    checkout.to_date - checkin.to_date
  end
end
