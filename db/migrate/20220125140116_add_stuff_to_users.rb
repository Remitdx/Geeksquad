class AddStuffToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pseudo, :string
    add_column :users, :photo, :string
    add_column :users, :point, :integer
  end
end
