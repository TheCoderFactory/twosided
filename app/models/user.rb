class User < ActiveRecord::Base
  has_one :student_profile
  has_one :teacher_profile
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :add_role_to_user, :build_profile

  def add_role_to_user
  	role = self.user_type
  	self.add_role role
  end

  def build_profile
  	if self.user_type == 'student'
  		self.student_profile = StudentProfile.create!
	  elsif self.user_type == 'teacher'
      self.teacher_profile = TeacherProfile.create!
	  end
  end
end
