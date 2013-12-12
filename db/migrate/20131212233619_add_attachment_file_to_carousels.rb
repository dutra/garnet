class AddAttachmentFileToCarousels < ActiveRecord::Migration
  def self.up
    change_table :carousels do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :carousels, :file
  end
end
