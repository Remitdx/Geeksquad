class CreateRules < ActiveRecord::Migration[6.1]
  def change
    create_table :rules do |t|
      t.string :title
      t.integer :points
      t.text :description

      t.timestamps
    end
  end
end
