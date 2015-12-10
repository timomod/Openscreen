class AddAttachmentImageToHomepages < ActiveRecord::Migration
  def self.up
    change_table :homepages do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :homepages, :image
  end
end
