class AddColumAdminToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :admin, :boolean
  end
end
