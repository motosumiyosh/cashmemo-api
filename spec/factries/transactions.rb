# frozen_string_literal: true

FactoryBot.define do
  factory :transaction_a do
    assosiation :user
    amount 700
    content '武蔵屋　ラーメン'
    category 0
    transaction_type 1
  end

  factory :transaction_b do
    assosiation :user
    amount 3000
    content 'Hibino Eats配送費'
    category 1
    transaction_type 0
  end
end
