 class Site < ActiveRecord::Base

  validates :url, presence: true
  validates :url, :format => URI::regexp(%w(http https))
  validates :interval, presence: { message: " can't be blank" }
  validates_numericality_of :interval, presence: { message: "is not a number" }, :only_integer => true
  has_many :requests
  belongs_to :user

  attr_accessor :res # Is this needed?

  # Calculate the average resp_time in the past 24 hours 
  def average_response_time 
    requests.last_day.present? && (requests.last_day.inject(0.0){|sum, x| sum + x.response_time.to_f } / requests.last_day.length).round(2)
  end
  
end