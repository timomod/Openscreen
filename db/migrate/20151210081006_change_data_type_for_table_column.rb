class ChangeDataTypeForTableColumn < ActiveRecord::Migration
  def change
    change_column :homepages, :body, :text
  end
end
