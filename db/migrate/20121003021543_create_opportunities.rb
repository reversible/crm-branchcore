class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      
      t.integer :user_id
      t.integer :account_id
      t.decimal :amount, :precision =>8, :scale => 2
      t.string  :status
      t.string  :description
      

      t.timestamps
    end
  end
end
