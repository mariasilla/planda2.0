class WeeklyCheckJob < ApplicationJob
  queue_as :default

  def perform(task)
    if task.frequency.downcase == 'weekly'
      if task.completeness_level.downcase == 'done'
        task.completed += 1
      end
      task.completeness_level.downcase == 'not started'
      task.cycles += 1
      task.save
    end
  end
end
