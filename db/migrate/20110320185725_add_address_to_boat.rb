class AddAddressToBoat < ActiveRecord::Migration
  def self.up
    add_column :boats, :address,   :string
    add_column :boats, :latitude,  :float
    add_column :boats, :longitude, :float
  end

  def self.down
    remove_column :boats, :address
    remove_column :boats, :latitude
    remove_column :boats, :longitude
  end
end
