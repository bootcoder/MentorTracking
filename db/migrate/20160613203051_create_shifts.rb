class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|

      t.datetime :start
      t.datetime :end

      t.string :time_zone

      t.integer :accepts_mentors

      t.boolean :booked?

      t.references :admin
      t.references :mentor
      t.references :location
      t.references :department

      t.timestamps null: false
    end
  end
end
