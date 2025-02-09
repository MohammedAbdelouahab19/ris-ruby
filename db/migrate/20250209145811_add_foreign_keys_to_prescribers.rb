class AddForeignKeysToPrescribers < ActiveRecord::Migration[8.0]
  def change
    add_reference :prescribers, :structure, null: false, foreign_key: true
    add_reference :prescribers, :speciality, null: false, foreign_key: true
    add_reference :prescribers, :service, null: false, foreign_key: true
  end
end
