class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :publish
      t.string :title
      t.string :subtitle
      t.text :body
      t.string :calendar_title
      t.string :calendar_body
      t.integer :day
      t.integer :month
      t.integer :year
      t.string :start
      t.string :end
      t.string :address_one
      t.string :address_two
      t.integer :postcode
      t.string :city

      t.timestamps null: false
    end
  end
end
