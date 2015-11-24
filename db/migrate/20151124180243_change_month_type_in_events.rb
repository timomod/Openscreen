class ChangeMonthTypeInEvents < ActiveRecord::Migration
  def change
    change_column :events, :month, :string
  end
end
