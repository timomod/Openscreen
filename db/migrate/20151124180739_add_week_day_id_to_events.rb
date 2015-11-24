class AddWeekDayIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :week_day, :string
  end
end
