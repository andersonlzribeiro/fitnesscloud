class CreatePlanActivities < ActiveRecord::Migration
  def change
    create_table :plan_activities do |t|
      t.references :plan, index: true
      t.references :activity, index: true 

      t.timestamps
    end
  end
end
