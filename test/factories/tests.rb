FactoryBot.define do
  factory :test do
    date { "2025-02-08" }
    status { "MyString" }
    underAnesthesia { false }
    examination { nil }
  end
end
