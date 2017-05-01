class WeeklyCheckJob < ApplicationJob
  queue_as :default

  def perform(*args)
    if task.frequency == 'weekly'
      if task.completeness == 'done'
        task.completed++
      end
      task.completeness=='not started'
      task.cycles++
    end
  end
end
