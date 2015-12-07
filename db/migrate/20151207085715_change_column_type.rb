class ChangeColumnType < ActiveRecord::Migration
  def change
    change_column :covers, :body, :text
  end
end
