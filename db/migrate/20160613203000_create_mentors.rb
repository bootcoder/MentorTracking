class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|

      t.string :name
      t.string :phone
      t.string :email
      t.string :img_url
      t.string :github_handle
      t.string :cohort
      t.string :provider
      t.string :uid
      t.string :token
      t.string :refresh_token
      t.string :secret

      t.text :address
      t.text :bio

      t.integer :token_expires_at

      t.boolean :is_employed, default: false

      t.date :dbc_start
      t.date :dbc_end

      t.references :location

      t.timestamps null: false
    end

    add_index :mentors, :provider
    add_index :mentors, :uid
    add_index :mentors, [:provider, :uid], unique: true

  end
end
