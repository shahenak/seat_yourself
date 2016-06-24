FactoryGirl.define do
  factory :user do
    name ['James', 'Carol', 'Leon', 'Enakshi'].sample
    email 'j2you@ryerson.ca'
    phone '647-987-9989'
    password 'asdfasdf'
  end
end
