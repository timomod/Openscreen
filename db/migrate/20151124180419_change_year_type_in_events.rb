class ChangeYearTypeInEvents < ActiveRecord::Migration
  def change
    change_column :events, :year, :string
  end
end
