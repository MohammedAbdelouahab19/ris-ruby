class CreateModalities < ActiveRecord::Migration[8.0]
  def change
    create_table :modalities do |t|
      t.string :code

      t.timestamps
    end
  end
end
