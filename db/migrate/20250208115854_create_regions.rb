class CreateRegions < ActiveRecord::Migration[8.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :code
      t.string :direction

      t.timestamps
    end
  end
end
