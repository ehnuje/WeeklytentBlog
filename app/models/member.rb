class Member < ActiveRecord::Base
    has_attached_file :profile_img,
                    :styles => { :medium => "700x400>", :thumb => "360x210>" },
                    :default_url => "missing.png",
                    :storage => :dropbox,
                    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  validates_attachment_content_type :profile_img, :content_type => /\Aimage\/.*\Z/
end

