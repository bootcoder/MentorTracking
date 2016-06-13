class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|

      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :img_url
      t.string :github_handle
      t.string :cohort

      t.text :address
      t.text :bio

      t.boolean :is_employed?

      t.date :dbc_start
      t.date :dbc_end

      t.references :location

      t.timestamps null: false
    end
  end
end
