FactoryGirl.define do
  factory :user do
    sequence(:email)  {|n| "test#{n}@example.com"}
    password          'f4k3p455w0rd'
    name              'Jhon Dore Coyote'
    confirmed_at      Time.now
  end
end
