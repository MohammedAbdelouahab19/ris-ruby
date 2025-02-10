class CreateRoleAction < ActiveRecord::Migration[8.0]
  def change
    create_table :role_action do |t|
      t.belongs_to :role
      t.belongs_to :action
    end
  end
end
