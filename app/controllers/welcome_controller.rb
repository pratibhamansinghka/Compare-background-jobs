require 'benchmark'

class WelcomeController < ApplicationController
  def index
    # Notifier.delay.mail_me
    # Notifier.mail_me.deliver_later
    n = 1000
    Benchmark.bm do |x|
      x.report { enqueue_dj n }
      x.report { enqueue_sidekiq n }
      x.report { enqueue_resque n }
    end
  end

  def say_hi

  end
  private

  def enqueue_dj(n)
    n.times do
      Delayed::Job.enqueue Dj
    end
  end

  def enqueue_sidekiq(n)
    n.times do
      SidekiqWorker.perform_async
    end
  end

  def enqueue_resque(n)
    n.times do
      ResqueJob.perform_later
    end
  end
end
