class AddForeignKeysToServices < ActiveRecord::Migration[8.0]
  def change
    add_reference :services, :establishment, null: false, foreign_key: true
  end
end
