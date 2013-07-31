class Mailer < ActionMailer::Base
  default from: Rails.application.config.emails_from

  def alert_email(request)
    @request = request
    mail(to: @request.site.user.email, subject: "Alert from #{Rails.application.config.app_name}")
  end
end
