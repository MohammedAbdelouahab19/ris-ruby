class CreateSettings < ActiveRecord::Migration[8.0]
  def change
    create_table :settings do |t|
      t.string :setting_key
      t.string :value

      t.timestamps
    end
  end
end
