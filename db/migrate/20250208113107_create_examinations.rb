class CreateExaminations < ActiveRecord::Migration[8.0]
  def change
    create_table :examinations do |t|
      t.float :patientWeight
      t.string :note
      t.references :patient, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.references :nurse, null: false, foreign_key: true
      t.references :Reanimator, null: false, foreign_key: true
      t.references :corresponding, null: false, foreign_key: true
      t.references :convention, null: false, foreign_key: true
      t.references :prescriber, null: false, foreign_key: true
      t.references :technical, null: false, foreign_key: true
      t.references :radiologist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
