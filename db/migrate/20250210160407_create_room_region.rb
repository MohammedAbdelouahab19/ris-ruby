class CreateRoomRegion < ActiveRecord::Migration[8.0]
  def change
    create_table :room_region do |t|
      t.belongs_to :room
      t.belongs_to :region
    end
  end
end
