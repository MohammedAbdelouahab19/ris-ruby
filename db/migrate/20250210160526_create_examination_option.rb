class CreateExaminationOption < ActiveRecord::Migration[8.0]
  def change
    create_table :examination_options do |t|
      t.belongs_to :examination
      t.belongs_to :modality_option
    end
  end
end
