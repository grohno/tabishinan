FactoryBot.define do
  factory :message do
    body { "MyText" }
    conversation { nil }
    user { nil }
    confirmed { false }
  end
end
