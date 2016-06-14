class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|

      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :img_url
      t.string :github_handle

      t.references :location

      t.timestamps null: false    end
  end
end
