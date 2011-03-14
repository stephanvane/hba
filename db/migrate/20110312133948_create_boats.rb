class CreateBoats < ActiveRecord::Migration
  def self.up
    create_table :boats do |t|
      t.string :name
      t.string :slug
      t.text   :description
    end
    
    add_index :boats, :slug, :unique => true
  end

  def self.down
    drop_table :boats
  end
end
