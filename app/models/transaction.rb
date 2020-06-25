# frozen_string_literal: true

class Transaction < ApplicationRecord
  acts_as_paranoid
  belongs_to :user

  enum transaction_type: { plus: 0, minus: 1 }
  enum category: { food: 0, personal: 1, amusement: 2, other: 3, atm: 4 }
end
