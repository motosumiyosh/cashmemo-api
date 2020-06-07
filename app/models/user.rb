# frozen_string_literal: true

class User < ApplicationRecord
  has_many :transactions

  has_secure_password
  has_secure_token
end
