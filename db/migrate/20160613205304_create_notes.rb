class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|

      t.text :body

      t.references :admin
      t.references :mentor

      t.timestamps null: false
    end
  end
end
