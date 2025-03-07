class CreateExaminations < ActiveRecord::Migration[8.0]
  def change
    create_table :examinations do |t|
      t.float :patient_weight
      t.string :note
      # t.references :patient, null: false, foreign_key: true
      # t.references :service, null: false, foreign_key: true
      # t.references :nurse, null: false, foreign_key: true
      # t.references :reanimator, null: false, foreign_key: true
      # t.references :corresponding, null: false, foreign_key: true
      # t.references :convention, null: false, foreign_key: true
      # t.references :prescriber, null: false, foreign_key: true
      # t.references :technical, null: false, foreign_key: { to_table: :users }
      # t.references :radiologist, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
