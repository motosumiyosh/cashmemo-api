# frozen_string_literal: true

class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate!, only: [:create]

  def create
    @user = User.new(
      password: params[:password],
      email: params[:email]
    )
    if @user.save
      render json: @user
    else
      render jspn: { message: '作成できませんでした' }
    end
  end
end
