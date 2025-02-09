class CreateReports < ActiveRecord::Migration[8.0]
  def change
    create_table :reports do |t|
      t.string :status
      t.string :content
      # t.references :examination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
