class AddBannerToBoat < ActiveRecord::Migration
  def self.up
    add_column :boats, :banner, :string
  end

  def self.down
    remove_column :boats, :banner
  end
end
