class RemoveDateToEvent < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :debut
    remove_column :events, :fin
    add_column :events, :debut, :string
    add_column :events, :fin, :string
  end
end
