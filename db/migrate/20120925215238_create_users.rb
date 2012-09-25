class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name
      t.string :username
      t.string :password
      t.string :email
      t.boolean :is_admin

      t.timestamps
    end
  end
end
