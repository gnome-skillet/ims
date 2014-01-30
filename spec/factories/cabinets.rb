# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cabinet do
    number "MyString"
    temperature 1.5
    Room nil
  end
end
