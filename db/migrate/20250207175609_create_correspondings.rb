class CreateCorrespondings < ActiveRecord::Migration[8.0]
  def change
    create_table :correspondings do |t|
      t.string :name

      t.timestamps
    end
  end
end
