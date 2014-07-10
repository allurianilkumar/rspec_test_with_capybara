# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :collage do |f|
    f.cname "Apple collage"
    f.branch "USA"
    f.exam   "Maths"
  end
end
