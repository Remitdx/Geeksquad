class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.date :debut
      t.date :fin
      t.string :lieu
      t.text :description

      t.timestamps
    end
  end
end
