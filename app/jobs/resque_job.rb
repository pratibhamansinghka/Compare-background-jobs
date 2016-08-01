class ResqueJob < ActiveJob::Base
  self.queue_adapter = :resque
  @queue = :rj

  def perform
    start_time = Time.now
    job = Job.new
    job.process(start_time, :resque)
  end
end
