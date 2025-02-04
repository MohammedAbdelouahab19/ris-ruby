class CreateConventions < ActiveRecord::Migration[8.0]
  def change
    create_table :conventions do |t|
      t.string :name

      t.timestamps
    end
  end
end
