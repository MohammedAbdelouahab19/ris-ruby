class CreateTests < ActiveRecord::Migration[8.0]
  def change
    create_table :tests do |t|
      t.date :date
      t.string :status
      t.boolean :underAnesthesia
      t.references :examination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
