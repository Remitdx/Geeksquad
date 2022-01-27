class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.references :participant
      t.references :rule
      t.datetime :datetime

      t.timestamps
    end
  end
end
