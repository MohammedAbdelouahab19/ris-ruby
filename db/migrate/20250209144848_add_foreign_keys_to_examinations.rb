class AddForeignKeysToExaminations < ActiveRecord::Migration[8.0]
  def change
    add_reference :examinations, :patient, null: false, foreign_key: true
    add_reference :examinations, :service, null: true, foreign_key: true
    add_reference :examinations, :nurse, null: true, foreign_key: true
    add_reference :examinations, :reanimator, null: true, foreign_key: true
    add_reference :examinations, :corresponding, null: true, foreign_key: true
    add_reference :examinations, :convention, null: true, foreign_key: true
    add_reference :examinations, :prescriber, null: true, foreign_key: true
    add_reference :examinations, :technical, null: true, foreign_key: { to_table: :users }
    add_reference :examinations, :radiologist, null: true, foreign_key: { to_table: :users }
  end
end
