require 'sidekiq'


Sidekiq.configure_client do |config|
  config.redis = { db: 1 }
end


Sidekiq.configure_server do |config|
  config.redis = { db: 1 }
end


class dailyCheck
  include Sidekiq::Worker

  def perform (task)
    if task.frequency == 'daily'
      if task.completeness == 'done'
        task.completed++
      end
      task.completeness=='not started'
      task.cycles++
    end
  end
end

class weeklyCheck
  include Sidekiq::Worker

  def perform (task)
    if task.frequency == 'weekly'
      if task.completeness == 'done'
        task.completed++
      end
      task.completeness=='not started'
      task.cycles++
    end
  end
end
