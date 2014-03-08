json.array!(@billing_plans) do |billing_plan|
  json.extract! billing_plan, :id, :description, :days, :active
  json.url billing_plan_url(billing_plan, format: :json)
end
