class TeacherProfile < ActiveRecord::Base
  belongs_to :school
  belongs_to :user

  # validates :first_name, :last_name, :contact_phone, :bio, presence: true
  def profile_complete?
		self.contact_phone && self.bio && self.first_name
	end
  def full_name
		self.first_name.to_s + ' ' + self.last_name.to_s
	end
end
