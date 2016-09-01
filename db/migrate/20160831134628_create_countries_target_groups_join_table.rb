class CreateCountriesTargetGroupsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :countries_target_groups, id: false do |t|
      t.integer :country_id
      t.integer :target_group_id
    end
  end

  def self.down
    drop_table :countries_target_groups
  end
end
