class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :description
      t.boolean :active , null: false,  default: true

      t.timestamps
    end
    add_index :activities, :description,   :unique => true
  end
end
