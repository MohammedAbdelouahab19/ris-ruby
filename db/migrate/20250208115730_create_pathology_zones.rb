class CreatePathologyZones < ActiveRecord::Migration[8.0]
  def change
    create_table :pathology_zones do |t|
      t.string :name

      t.timestamps
    end
  end
end
