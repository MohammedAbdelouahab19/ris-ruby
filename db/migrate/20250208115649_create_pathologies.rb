class CreatePathologies < ActiveRecord::Migration[8.0]
  def change
    create_table :pathologies do |t|
      t.string :name
      t.references :pathology_zone, null: false, foreign_key: true
      t.references :pathology_category, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
