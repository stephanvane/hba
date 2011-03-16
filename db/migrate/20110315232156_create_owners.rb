class CreateOwners < ActiveRecord::Migration
  def self.up
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
    end
    
    add_column :boats, :owner_id, :integer
  end

  def self.down
    drop_table :owners
    
    remove_column :boats, :owner_id
  end
end
