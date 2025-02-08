FactoryBot.define do
  factory :prescriber do
    first_name { "MyString" }
    last_name { "MyString" }
    title { "MyString" }
    structure { nil }
    speciality { nil }
    service { nil }
    email { "MyString" }
    address { "MyString" }
    phone_number { "MyString" }
  end
end
