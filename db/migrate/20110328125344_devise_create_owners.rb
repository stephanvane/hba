class DeviseCreateOwners < ActiveRecord::Migration
  def self.up
    create_table(:owners) do |t|
      t.string :first_name
      t.string :last_name
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.confirmable
      t.timestamps
    end
    
    add_column :boats, :owner_id, :integer

    add_index :owners, :email,                :unique => true
    add_index :owners, :reset_password_token, :unique => true
    add_index :owners, :confirmation_token,   :unique => true
  end

  def self.down
    drop_table :owners
    remove_column :boats, :owner_id
  end
end