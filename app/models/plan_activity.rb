class PlanActivity < ActiveRecord::Base
  belongs_to :plan
  belongs_to :activity
end
