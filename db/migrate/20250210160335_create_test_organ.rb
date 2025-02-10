class CreateTestOrgan < ActiveRecord::Migration[8.0]
  def change
    create_table :test_organ do |t|
      t.belongs_to :test
      t.belongs_to :organ
    end
  end
end
