class CreateReanimators < ActiveRecord::Migration[8.0]
  def change
    create_table :reanimators do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
