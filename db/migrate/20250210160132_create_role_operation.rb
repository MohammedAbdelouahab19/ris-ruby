class CreateRoleOperation < ActiveRecord::Migration[8.0]
  def change
    create_table :role_operation do |t|
      t.belongs_to :role
      t.belongs_to :operation
    end
  end
end
