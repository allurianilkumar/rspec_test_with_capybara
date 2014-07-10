# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do |f|
    f.sname "Anil"
    f.smarks  100
    f.sdob  12121
    collage
  end
end
