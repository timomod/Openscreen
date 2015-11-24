class ChangePostcodeTypeInEvents < ActiveRecord::Migration
  def change
    change_column :events, :postcode, :string
  end
end
