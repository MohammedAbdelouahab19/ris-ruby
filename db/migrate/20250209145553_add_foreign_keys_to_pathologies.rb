class AddForeignKeysToPathologies < ActiveRecord::Migration[8.0]
  def change
    add_reference :pathologies, :pathology_zone, null: false, foreign_key: true
    add_reference :pathologies, :pathology_category, null: false, foreign_key: true
  end
end
