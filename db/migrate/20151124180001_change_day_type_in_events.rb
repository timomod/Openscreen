class ChangeDayTypeInEvents < ActiveRecord::Migration
  def change
    change_column :events, :day, :string
  end
end
