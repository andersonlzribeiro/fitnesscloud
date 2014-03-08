class CreateBillingPlans < ActiveRecord::Migration
  def change
    create_table :billing_plans do |t|
      t.string :description, null: false
      t.integer :days , null: false ,default: 0
      t.boolean :active , null: false , default: true

      t.timestamps
    end
    add_index :billing_plans, :description,   :unique => true
  end
end
