class AddForeignKeysToEstablishments < ActiveRecord::Migration[8.0]
  def change
    add_reference :establishments, :city, null: false, foreign_key: true
    add_reference :establishments, :report_template, true: false, foreign_key: true
  end
end
