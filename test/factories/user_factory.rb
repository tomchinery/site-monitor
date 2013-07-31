FactoryGirl.define do
  factory :user do
    id 1
    email  "user1@test.eu"
    encrypted_password "abcdef12"
    password "abcdef12"
    created_at Time.now
  end
end