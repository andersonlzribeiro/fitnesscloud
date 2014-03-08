class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name , null:false
      t.string :gender , null:false
      t.string :rg
      t.string :cpf
      t.date :birth_date 
      t.references :city, index: true
      t.string :zipcode
      t.string :address , null:false
      t.string :adress_number , null:false
      t.string :district 
      t.string :phone , null:false
      t.string :business_phone
      t.string :mobile , null:false 
      t.string :email , null:false
      t.string :emergency_contact_1 , null:false
      t.string :emergency_contact_2 
      t.string :emergency_contact_1_phone , null:false
      t.string :emergency_contact_2_phone
      t.string :health_insurance_provider
      t.string :observation

      t.timestamps
    end
    add_index :people, :name,   :unique => true
  end
end
