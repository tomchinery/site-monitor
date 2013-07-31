FactoryGirl.define do 
  factory :request do
    url "http://www.bread4scrap.com/"
    interval "1"
    code "302"
    response_time "0.5"
    created_at Time.now
    site 
  end
end