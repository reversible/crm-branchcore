class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      
      t.integer :user_id
      t.integer :business_type_id
      
      t.string :name
      t.string :email
      t.string :address
      t.string :description
      t.string :account_type
       
      
      

      t.timestamps
    end
  end
end
