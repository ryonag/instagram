class ChangeColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string, after: :id
    add_column :users, :icon, :string, after: :encrypted_password
    add_column :users, :introduction, :string, after: :icon
  end
end
