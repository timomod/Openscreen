class AddTitleIdToCovers < ActiveRecord::Migration
  def change
    add_column :covers, :title, :string
  end
end
