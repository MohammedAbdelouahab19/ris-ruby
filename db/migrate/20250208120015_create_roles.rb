class CreateRoles < ActiveRecord::Migration[8.0]
  def change
    create_table :roles do |t|
      t.string :role_key
      t.string :name

      t.timestamps
    end
  end
end
