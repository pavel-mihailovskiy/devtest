class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :auth_token

      t.timestamps null: false
    end
  end
end
