

every 1.day, :at => '12:00 am' do
  DailyCheckJob.perform_now(Task.last)
end
