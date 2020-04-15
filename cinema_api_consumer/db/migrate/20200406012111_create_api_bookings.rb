class CreateApiBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :api_bookings do |t|

      t.timestamps
    end
  end
end
