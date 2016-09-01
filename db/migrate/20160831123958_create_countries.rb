class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :country_code
      t.integer :panel_provider_id

      t.timestamps null: false
    end
  end
end
