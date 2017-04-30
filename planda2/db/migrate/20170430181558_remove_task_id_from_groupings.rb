class RemoveTaskIdFromGroupings < ActiveRecord::Migration[5.0]
  def change
    remove_reference :groupings, :task, foreign_key: true
  end
end
