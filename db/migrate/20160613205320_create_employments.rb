class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|

      t.string :company_name

      t.date :start_date

      t.references :mentor

      t.timestamps null: false
    end
  end
end
