# frozen_string_literal: true

FactoryBot.define do
  sequence :title do |n|
    "PostTitle#{'%02d' % n}"
  end

  sequence :body do |n|
    "PostBody#{'%02d' % n}"
  end

  factory :post do
    title
    body
  end
end
