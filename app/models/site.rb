 class Site < ActiveRecord::Base

  validates :url, presence: true, length: { minimum: 3 }
  validates :interval, presence: true

  has_many :requests
  belongs_to :user

  attr_accessor :res

  # Calculate the average resp_time in the past 24 hours 
  def average_response_time 
    requests.last_day.present? && (requests.last_day.inject(0.0){|sum, x| sum + x.response_time.to_f } / requests.last_day.length).round(2)
  end

  # Store response time, http code, http message, url id, time test initiated in a new DB table
  # def log_monitored_site
  #   log_responses
  # end
end