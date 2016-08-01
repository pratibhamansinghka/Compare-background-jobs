class Notifier < ActionMailer::Base

  default from: 'Pratibha <admin@example.com>',
          content_type: 'multipart/alternative'

  def mail_me
    mail(to: 'pratibha@vinsol.com',
         subject: 'Mailed')
  end
end
