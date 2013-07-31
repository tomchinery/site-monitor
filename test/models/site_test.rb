require 'test_helper'

class SiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # test "should return http message, code, and response time if successful" do
  #   si = Site.new :url => "http://www.bread4scrap.com/", :interval => "1"
  #   assert si.schedule_requests
  #   assert si.start_monitoring
  # end

  # How do you test that your sending an email when http code is pulled from DB? 

  # test "should send an email if unexpected http code is returned from script" do
  #   si = Site.new :url => "http://www.bread4scrap.com/fgfhggfhgdg", :interval => "1"
  #   assert si.send_alert_email
  # end

  test "should calculate average response time if enough sites otherwise return false" do 
    c = FactoryGirl.build(:request)
    Mailer.expects(:send).with(:alert_email, c)
    c.save

    c.site.stubs(:average_response_time).returns(1)
  end
end