class Folio < ActiveRecord::Base
  has_attached_file :figure,
                    :styles => { :medium => "700x400>", :thumb => "360x210>" },
                    :default_url => "missing.png",
                    :storage => :dropbox,
                    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  validates_attachment_content_type :figure, :content_type => /\Aimage\/.*\Z/

 scope :curation, -> {order(created_at: :desc)}

end
