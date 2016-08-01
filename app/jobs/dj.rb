class Dj < ActiveJob::Base
  self.queue_adapter = :delayed_job
  @queue = :dj

  def self.perform
    start_time = Time.now
    job = Job.new
    job.process(start_time, :delayed_job)
  end
end
