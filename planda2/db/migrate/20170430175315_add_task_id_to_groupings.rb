class AddTaskIdToGroupings < ActiveRecord::Migration[5.0]
  def change
    add_reference :groupings, :task, foreign_key: true
  end
end
