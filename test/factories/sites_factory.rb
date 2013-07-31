FactoryGirl.define do 
  factory :site do 
    url "http://www.example.com/"
    interval 1
    user_id 1
    id 1
  end

  factory :site1, class: :site do
    url "http://www.bread4scrap.com/dndgfdgfng"
    interval 1
  end
end