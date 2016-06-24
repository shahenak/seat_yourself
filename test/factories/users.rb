FactoryGirl.define do
  factory :user do
    name ['James', 'Carol', 'Leon', 'Enakshi'].sample
    email 'j2you@ryerson.ca'
    password 'asdfasdf'
  end
end
