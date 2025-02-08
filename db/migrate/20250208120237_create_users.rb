class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :title
      t.string :phone_number
      t.string :hl7_code
      t.string :password_digest
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
