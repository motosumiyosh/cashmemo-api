# frozen_string_literal: true

class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate!, only: [:create]

  def create
    @user = User.create!(
      password: params[:password],
      email: params[:email]
    )
    response.headers['X-Authentication-Token'] = encode(@user.id)
    render json: @user, status: :ok
  end

  def auth
    user = User.find_by(email: params[:email])
    unless !!user&.authenticate(params[:password])
      raise ActionController::BadRequest, 'ID or Password is wrong'
    end

    response.headers['X-Authentication-Token'] = encode(user.id)
    render json: { message: 'success' }, status: :ok
  end
end
