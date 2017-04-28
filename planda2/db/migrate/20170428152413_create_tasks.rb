class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :frequency
      t.string :completeness_level
      t.integer :cycles
      t.integer :completed
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
