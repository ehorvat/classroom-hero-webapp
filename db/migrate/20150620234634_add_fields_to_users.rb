class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :role, :string
    add_column :users, :stamp, :string
    add_column :users, :activated, :boolean
    add_column :users, :email, :string
  end
end
