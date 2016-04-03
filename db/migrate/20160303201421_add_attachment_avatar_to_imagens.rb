class AddAttachmentAvatarToImagens < ActiveRecord::Migration
  def self.up
    change_table :imagens do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :imagens, :avatar
  end
end
