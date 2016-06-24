FactoryGirl.define do
  factory :restaurant do
    name  ['McDonalds', 'Shawarma King', 'Congee Queen'].sample
    address "#{%w(22 44 110).sample} #{%w(Yonge Bathurst Bayview).sample}"
    phone '416-730-8555'
    capacity {rand(20..100)}
  end
end
