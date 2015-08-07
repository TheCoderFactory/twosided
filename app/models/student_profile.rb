class StudentProfile < ActiveRecord::Base
	belongs_to :user

	mount_uploader :profile_pic, ProfilePicUploader

	def full_name
		self.first_name.to_s + ' ' + self.last_name.to_s
	end

	def complete?
		self.address_line_1 && self.contact_number && self.bio && self.first_name
	end

	def has_children_check?
		self.working_with_children_number
	end
end
