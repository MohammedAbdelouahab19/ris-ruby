class CreateOrgans < ActiveRecord::Migration[8.0]
  def change
    create_table :organs do |t|
      t.string :name
      t.string :code
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
