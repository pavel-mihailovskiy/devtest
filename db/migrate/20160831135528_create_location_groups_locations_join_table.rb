class CreateLocationGroupsLocationsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :location_groups_locations, id: false do |t|
      t.integer :location_id
      t.integer :location_group_id
    end
  end

  def self.down
    drop_table :location_groups_locations
  end
end

