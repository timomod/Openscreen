class CreateHomepages < ActiveRecord::Migration
  def change
    create_table :homepages do |t|
      t.string :title
      t.string :subtitle
      t.string :body

      t.timestamps null: false
    end
  end
end
