Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redis.example.com:7372/12' }
  config.periodic do |mgr|

  end
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redis.example.com:7372/12' }
end
