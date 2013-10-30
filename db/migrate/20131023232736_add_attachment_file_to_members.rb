class AddAttachmentFileToMembers < ActiveRecord::Migration
  def self.up
    change_table :members do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :members, :file
  end
end
