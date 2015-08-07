json.array!(@schools) do |school|
  json.extract! school, :id, :name, :street_address_1, :street_address_2, :suburb, :state, :postcode, :country, :acara_school_id, :school_type
  json.url school_url(school, format: :json)
end
