FactoryGirl.define do
  factory :review do
    comment "This restaurant is a hidden gem!"
    restaurant_id 1
    user_id 1
  end
end
