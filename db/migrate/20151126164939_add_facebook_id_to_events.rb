class AddFacebookIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :facebook, :string
  end
end
