class CreateOperations < ActiveRecord::Migration[8.0]
  def change
    create_table :operations do |t|
      t.string :name
      t.string :operation_type
      # t.references :resource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
