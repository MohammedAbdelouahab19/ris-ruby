class CreateReportTemplates < ActiveRecord::Migration[8.0]
  def change
    create_table :report_templates do |t|
      t.string :title
      t.string :content
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
