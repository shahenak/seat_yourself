FactoryGirl.define do
  factory :reservation do
    time {Time.now}
    size {rand(1..50)}
  end
end
