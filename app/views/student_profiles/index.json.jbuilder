json.array!(@student_profiles) do |student_profile|
  json.extract! student_profile, :id, :first_name, :last_name, :address_line_1, :address_line_2, :suburb, :postcode, :state, :website_url, :contact_number, :degree, :institution, :working_with_children_number, :profile_pic, :induction, :bio
  json.url student_profile_url(student_profile, format: :json)
end
