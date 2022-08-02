class City < ApplicationRecord
  validates :name,
            presence: true,
            uniqueness: true
  validates :post_code,
            presence: true,
            uniqueness: true,
            format: { with: /\A(?:0[1-9]|[1-8]\d|9[0-8])\d{3}\z/ }
  has_many :listings
end
