# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name 'hibino'
    email 'panpakapan0326@gmail.com'
    password_digest 'passw0rd'
  end
end
