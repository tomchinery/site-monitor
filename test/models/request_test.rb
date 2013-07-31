require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  test "check to see if an email has been sent" do 
    c = FactoryGirl.build(:request)
    Mailer.expects(:send).with(:alert_email, c)
    c.save

    site1 = FactoryGirl.create(:site1)

    site1.stubs(:send_alert_email)
  end

  # test "foo" do
  #   c = FactoryGirl.build(:request)
  #   Mailer.expects(:send).with(:alert_email, c)
  #   c.save
    
  #   puts c.site.inspect
  # end
end