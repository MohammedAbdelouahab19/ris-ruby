class CreateReportPathology < ActiveRecord::Migration[8.0]
  def change
    create_table :report_pathologies do |t|
      t.belongs_to :report
      t.belongs_to :pathology
    end
  end
end
