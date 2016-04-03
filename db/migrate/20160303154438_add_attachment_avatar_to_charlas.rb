class AddAttachmentAvatarToCharlas < ActiveRecord::Migration
  def self.up
    change_table :charlas do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :charlas, :avatar
  end
end
