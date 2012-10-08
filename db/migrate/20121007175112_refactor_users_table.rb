class RefactorUsersTable < ActiveRecord::Migration
  def up
    
    
  rename_column "users", "password", "hashed_password"
  add_column"users", "salt", :string, :limit => 40
    
  end

  def down
  end
end
