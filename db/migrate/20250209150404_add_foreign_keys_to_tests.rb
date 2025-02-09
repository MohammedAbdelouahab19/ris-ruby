class AddForeignKeysToTests < ActiveRecord::Migration[8.0]
  def change
    add_reference :tests, :examination, null: false, foreign_key: true
  end
end
