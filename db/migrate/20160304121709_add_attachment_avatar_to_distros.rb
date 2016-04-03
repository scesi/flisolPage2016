class AddAttachmentAvatarToDistros < ActiveRecord::Migration
  def self.up
    change_table :distros do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :distros, :avatar
  end
end
