# frozen_string_literal: true

FactoryBot.define do
  sequence :title do |n|
    "PostTitle#{n}"
  end

  sequence :body do |n|
    "PostBody#{n}"
  end

  factory :post do
    title
    body
  end
end
