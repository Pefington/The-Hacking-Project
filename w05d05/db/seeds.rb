Faker::Config.locale = :fr

until User.count == 500
  User.create(
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.phone_number,
    description: Faker::Hipster.sentences(number: 1)
  )
end
sample_user = User.all.sample
puts "\n\nSample of #{User.count} users:"
puts '------------'
puts sample_user.email
puts sample_user.phone_number
puts sample_user.description

until City.count == 20
  City.create(
    name: Faker::Address.city,
    post_code: Faker::Address.postcode
  )
end
sample_city = City.all.sample
puts "\n\nSample of #{City.count} cities:"
puts '------------'
puts sample_city.name
puts sample_city.post_code

i = 0
until Listing.count == 100
  Listing.create(
    host_id: rand(User.count),
    city_id: rand(City.count),
    available_beds: rand(1..10),
    price: rand(20..100),
    description: Faker::Hipster.paragraph_by_chars(characters: 145),
    has_wifi: Faker::Boolean.boolean,
    welcome_message: Faker::Quote.yoda
  )
end
sample_listing = Listing.all.sample
puts "\n\nSample of #{Listing.count} listings:"
puts '------------'
puts "Host: #{sample_listing.host_id}"
puts "City: #{sample_listing.city_id}, #{City.find(sample_listing.city_id).name}"
puts "#{sample_listing.available_beds} beds"
puts "#{sample_listing.price} euros"
puts sample_listing.description
puts "Wifi: #{sample_listing.has_wifi}"
puts sample_listing.welcome_message

until Booking.count == 50
  Booking.create(
    listing_id: rand(Listing.count),
    guest_id: rand(User.count),
    checkin: Faker::Date.between(from: 1.year.ago, to: 1.year.from_now),
    checkout: Faker::Date.between(from: 1.year.ago, to: 1.year.from_now)
  )
end
sample_booking = Booking.all.sample
length = sample_booking.checkout.to_date - sample_booking.checkin.to_date
puts "\n\nSample of #{Booking.count} bookings:"
puts '------------'
puts "listing: #{sample_booking.listing_id}"
puts "Guest: #{sample_booking.guest_id}"
puts "Checkin: #{sample_booking.checkin}"
puts "Checkout: #{sample_booking.checkout}"
puts "Length: #{length} days"
