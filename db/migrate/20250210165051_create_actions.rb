class CreateActions < ActiveRecord::Migration[8.0]
  def change
    create_table :actions do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
