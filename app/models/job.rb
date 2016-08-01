class Job < ActiveRecord::Base
  require 'open-uri'
  def process(start_time, name)
    self.started_at = start_time

    # cpu_intensive_processing
    io_processing
    self.ended_at = Time.now
    self.name = name
    self.total = self.ended_at - self.started_at
    save!
  end
  def cpu_intensive_processing
    ::BCrypt::Password.create(SecureRandom.hex(200), :cost => 14)
  end

  def io_processing
    open('http://localhost:3000/welcome/say_hi')
  end
end
