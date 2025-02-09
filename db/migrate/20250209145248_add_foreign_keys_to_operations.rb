class AddForeignKeysToOperations < ActiveRecord::Migration[8.0]
  def change
    add_reference :operations, :resource, null: false, foreign_key: true
  end
end
