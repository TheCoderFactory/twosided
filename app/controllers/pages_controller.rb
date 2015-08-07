class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:home, :contact]
  def home
  	if user_signed_in?
	  	if current_user.has_role? :teacher
	  		@teacher_profile = current_user.teacher_profile
	  	end
	  end
  end

  def admin
  end

  def contact
  end
end
