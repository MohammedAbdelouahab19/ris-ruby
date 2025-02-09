class CreateRooms < ActiveRecord::Migration[8.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :description
      t.string :ip
      t.string :application_entity_title
      # t.references :service, null: false, foreign_key: true
      # t.references :modality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
