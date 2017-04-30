class SetDefaultsInTasks < ActiveRecord::Migration[5.0]
  def change
    change_column_default :tasks, :cycles, 0
    change_column_default :tasks, :completed, 0
    change_column_default :tasks, :completeness_level, 0
  end
end
