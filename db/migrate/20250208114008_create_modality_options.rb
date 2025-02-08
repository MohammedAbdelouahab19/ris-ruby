class CreateModalityOptions < ActiveRecord::Migration[8.0]
  def change
    create_table :modality_options do |t|
      t.string :name

      t.timestamps
    end
  end
end
