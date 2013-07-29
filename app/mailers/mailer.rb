class Mailer < ActionMailer::Base
  default from: "admin@uptime-monitor.net"

  def alert_email(request)
    @request = request
    mail(to: @request.site.user.email, subject: 'ALERT: Your site is down')
  end
end
