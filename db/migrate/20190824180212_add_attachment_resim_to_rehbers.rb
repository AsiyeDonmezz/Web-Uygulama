class AddAttachmentResimToRehbers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :rehbers do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :rehbers, :resim
  end
end
