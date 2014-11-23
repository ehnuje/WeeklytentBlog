class AddAttachmentFigureToFolios < ActiveRecord::Migration
  def self.up
    change_table :folios do |t|
      t.attachment :figure
    end
  end

  def self.down
    remove_attachment :folios, :figure
  end
end
