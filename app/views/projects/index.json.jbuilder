json.array!(@projects) do |project|
  json.extract! project, :id, :user_id, :name, :description, :start_date, :end_date, :flexible_dates, :days, :student_description, :address, :suburb, :postcode, :pay_per_hour
  json.url project_url(project, format: :json)
end
