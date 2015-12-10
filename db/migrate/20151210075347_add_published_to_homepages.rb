class AddPublishedToHomepages < ActiveRecord::Migration
  def change
    add_column :homepages, :published, :string
  end
end
