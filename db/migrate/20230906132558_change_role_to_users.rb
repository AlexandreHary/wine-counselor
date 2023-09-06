class ChangeRoleToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :role, 'integer USING CAST(role AS integer)'
  end
end
