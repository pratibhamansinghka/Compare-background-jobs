class SidekiqJob < ActiveJob::Base
  self.queue_adapter = :sidekiq
  @queue = :sq

  def perform
    start_time = Time.now
    job = Job.new
    job.process(start_time, :sidekiq)
  end
end
