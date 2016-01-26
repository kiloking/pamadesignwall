class Idea < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	acts_as_taggable
	belongs_to :author, class_name: "User", foreign_key: :user_id
	def editable_by?(user)
		user && user == author
	end
end
