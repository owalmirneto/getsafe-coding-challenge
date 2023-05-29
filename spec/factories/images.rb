# frozen_string_literal: true

FactoryBot.define do
  factory :image do
    url { Faker::Internet.url }

    trait :invalid do
      url { nil }
    end

    trait :rails do
      url { Faker::Internet.url(path: '/images/rails.png') }
    end

    factory :rails_image, traits: [:rails]
    factory :invalid_image, traits: [:invalid]
  end
end
