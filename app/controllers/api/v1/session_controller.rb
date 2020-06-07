# frozen_string_literal: true

class Api::V1::SessionController < ApplicationController
  skip_before_action :authenticate!, only: [:create]

  def create
    @user = User.find_by(email: params[:email])
    if @user&.authenticate(params[:password])
      render json: { message: 'ログイン完了' }
    else
      render json: { message: 'パスワードが違うぜ！w' }, status: 401
    end
  end

  def destroy; end
end
