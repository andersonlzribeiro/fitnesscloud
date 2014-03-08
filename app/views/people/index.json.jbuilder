json.array!(@people) do |person|
  json.extract! person, :id, :name, :gender, :rg, :cpf, :birth_date, :city_id, :zipcode, :address, :adress_number, :district, :phone, :business_phone, :mobile, :email, :emergency_contact_1, :emergency_contact_2, :emergency_contact_1_phone, :emergency_contact_2_phone, :health_insurance_provider, :observation
  json.url person_url(person, format: :json)
end
