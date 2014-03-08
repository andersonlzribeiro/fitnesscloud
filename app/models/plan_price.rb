class PlanPrice < ActiveRecord::Base
  belongs_to :plan
  belongs_to :billing_plan
end
