class AddAttachmentProfileImgToMembers < ActiveRecord::Migration
  def self.up
    change_table :members do |t|
      t.attachment :profile_img
    end
  end

  def self.down
    remove_attachment :members, :profile_img
  end
end
