json.array!(@plans) do |plan|
  json.extract! plan, :id, :description, :active
  json.url plan_url(plan, format: :json)
end
