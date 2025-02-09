class AddForeignKeysToRooms < ActiveRecord::Migration[8.0]
  def change
    add_reference :rooms, :service, null: false, foreign_key: true
    add_reference :rooms, :modality, null: false, foreign_key: true
  end
end
