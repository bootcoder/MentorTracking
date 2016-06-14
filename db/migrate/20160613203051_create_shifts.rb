class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|

      t.datetime :start
      t.datetime :end

      t.string :time_zone, default: "UTC -08:00"

      t.integer :accepts_mentors, default: 2
      t.integer :recurrs_every, default: 3

      t.boolean :booked, default: false

      t.references :admin
      t.references :mentor
      t.references :location
      t.references :department

      t.timestamps null: false
    end
  end
end
