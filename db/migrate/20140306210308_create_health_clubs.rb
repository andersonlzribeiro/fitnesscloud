class CreateHealthClubs < ActiveRecord::Migration
  def change
    create_table :health_clubs do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :health_clubs, :name,   :unique => true
  end
end
