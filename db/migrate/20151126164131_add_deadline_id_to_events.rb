class AddDeadlineIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :deadline, :string
  end
end
