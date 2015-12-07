class AddPublishedToCovers < ActiveRecord::Migration
  def change
    add_column :covers, :published, :string
  end
end
