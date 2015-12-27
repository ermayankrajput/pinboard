class Pin < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_attached_file :image, style: { thumb: '120x120', large: '300x400' }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
