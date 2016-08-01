class SidekiqWorker
  include Sidekiq::Worker
  def perform
    start_time = Time.now
    job = Job.new
    job.process(start_time, :sidekiq)
  end
end
