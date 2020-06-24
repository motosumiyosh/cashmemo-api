# frozen_string_literal: true

module Jwtauth
  require 'jwt'
  SECRET_KEY = Rails.application.secrets.secret_key_base

  def encode(user_id)
    expires_in = 3.month.from_now.to_i
    preload = { user_id: user_id, exp: expires_in }
    JWT.encode(preload, SECRET_KEY, 'HS256')
  end

  def decode(token)
    decoded_dwt = JWT.decode(token, SECRET_KEY, true, algorithm: 'HS256')
    decoded_dwt.first
  end
end
