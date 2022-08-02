class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :listing_id
      t.integer :guest_id
      t.datetime :checkin
      t.datetime :checkout

      t.timestamps
    end
  end
end

class CreateStays < ActiveRecord::Migration[5.2]
  def change
    create_table :stays do |t|
      t.integer :city_id
      t.integer :booking_id
      t.integer :listing_id
      t.integer :guest_id
      t.integer :host_id

      t.timestamps
    end
  end
end
