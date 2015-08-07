json.array!(@teacher_profiles) do |teacher_profile|
  json.extract! teacher_profile, :id, :school_id, :user_id, :first_name, :last_name, :contact_phone, :profile_pic, :bio
  json.url teacher_profile_url(teacher_profile, format: :json)
end
