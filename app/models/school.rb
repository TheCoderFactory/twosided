class School < ActiveRecord::Base
	has_many :teacher_profiles
	
	geocoded_by :school_data
	after_validation :geocode

	def school_data
		[name, street_address_1, street_address_2, suburb, state, postcode, country].compact.join(', ')
	end

	def self.search(search)
	  where("name LIKE ?", "%#{search}%")
	end
end
