# frozen_string_literal: true

FactoryBot.define do
  factory :transaction do
    amount { 700 }
    content { '武蔵屋　ラーメン' }
    category { 0 }
    transaction_type { 1 }
  end
end
