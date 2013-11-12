FactoryGirl.define do
  factory :user do
    name "karl"
    password "Hbertorell0"
    password_confirmation "Hbertorell0"
  end

  factory :thang do
    what "tenderlove at RubyConfAR"
    place "centro cultural konex"
    date Date.tomorrow
    description "Best possible event ever"
    amount 750
  end
end
