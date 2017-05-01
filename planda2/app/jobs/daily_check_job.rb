class DailyCheckJob < ApplicationJob
  queue_as :default

  def perform(*args)
    if task.frequency == 'daily'
      if task.completeness == 'done'
        task.completed++
      end
      task.completeness=='not started'
      task.cycles++
    end
  end
end
