class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      
      t.integer :account_id
      t.integer :user_id
      t.integer :contact_id
      
      
      t.string :subject
      t.string :status
      t.datetime :start_date
      t.datetime :limit_date
      t.datetime :end_date
      t.integer :priority

      t.timestamps
    end
  end
end
