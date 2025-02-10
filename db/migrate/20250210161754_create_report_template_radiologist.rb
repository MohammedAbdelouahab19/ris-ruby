class CreateReportTemplateRadiologist < ActiveRecord::Migration[8.0]
  def change
    create_table :report_template_radiologists do |t|
      t.belongs_to :report_template
      t.belongs_to :radiologist, foreign_key: { to_table: :users }
    end
  end
end
