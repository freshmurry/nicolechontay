class AddAttachmentImageToUsers < ActiveRecord::Migration
  def change
    add_attachment :users, :image
  end
  
  def self.up
    change_table :users do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :users, :image
  end
end