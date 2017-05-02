class OnceCheckJob < ApplicationJob
  queue_as :default

  def perform(task)
    if task.frequency.downcase == 'once'
      if task.completeness_level.downcase == 'done'
        # delete task
    end
  end
end
