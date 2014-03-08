class CreatePlanPrices < ActiveRecord::Migration
  def change
    create_table :plan_prices do |t|
      t.references :plan, index: true
      t.references :billing_plan, index: true
      t.decimal :price, precision: 8, scale: 4
      t.decimal :entrance_fee , precision: 8, scale: 4
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
