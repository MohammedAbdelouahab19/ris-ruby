class AddForeignKeysToReports < ActiveRecord::Migration[8.0]
  def change
    add_reference :reports, :examination, null: false, foreign_key: true
  end
end
