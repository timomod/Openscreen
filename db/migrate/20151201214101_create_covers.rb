class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :cover_image
      t.string :body

      t.timestamps null: false
    end
  end
end
