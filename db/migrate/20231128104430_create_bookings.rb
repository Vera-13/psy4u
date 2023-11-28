class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.references :patient, foreign_key: { to_table: :users }
      t.references :doctor, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
