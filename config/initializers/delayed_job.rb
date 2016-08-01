Delayed::Worker.destroy_failed_jobs = true
Delayed::Worker.delay_jobs = !Rails.env.test?
Delayed::Worker.default_priority = 10
Delayed::Worker.logger = Logger.new(File.join(Rails.root, 'log', 'delayed_job.log'))
Delayed::Worker.default_queue_name = 'default'
