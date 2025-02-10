class CreateModalityOption < ActiveRecord::Migration[8.0]
  def change
    create_table :modality_option do |t|
      t.belongs_to :modality
      t.belongs_to :modality_option
    end
  end
end
