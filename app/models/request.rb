class Request < ActiveRecord::Base

  belongs_to :site

   scope :last_day, -> {where(:created_at => (Time.now.yesterday..Time.now))} # For sites comparisions of avg. response times

  after_create :send_alert_email, unless: :is_valid_request?  

  private
  def send_alert_email
    Mailer.alert_email(self).deliver
  end

  def is_valid_request? 
    code == 200
  end
end 