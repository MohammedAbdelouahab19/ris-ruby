class CreatePrescribers < ActiveRecord::Migration[8.0]
  def change
    create_table :prescribers do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.references :structure, null: false, foreign_key: true
      t.references :speciality, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.string :email
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
