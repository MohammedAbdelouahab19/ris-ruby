FactoryBot.define do
  factory :patient do
    first_name { "MyString" }
    last_name { "MyString" }
    birthday { "2025-02-08" }
    age { 1 }
    gender { "MyString" }
    city { nil }
  end
end
