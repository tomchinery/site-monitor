require 'test_helper'

class SiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should return http message, code, and response time if successful" do
    si = Site.new :url => "http://www.bread4scrap.com/", :interval => "1m"
    assert si.schedule_requests
    assert si.start_monitoring
  end

  test "should send an email if unexpected http code is returned" do
    si = Site.new :url => "http://www.bread4scrap.com/fgfhggfhgdg", :interval => "1m"
    si.start_monitoring
    assert si.send_alert_email
  end
end
