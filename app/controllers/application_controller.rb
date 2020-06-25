# frozen_string_literal: true

class ApplicationController < ActionController::API
  include Jwtauth
  include ActionController::Cookies
  before_action :authenticate!

  rescue_from ActiveRecord::RecordInvalid, with: :error400
  rescue_from ActionController::BadRequest, with: :error400
  rescue_from ActionController::InvalidAuthenticityToken, with: :error401
  # rescue_from ActionController::Forbidden, with: :error403
  rescue_from ActiveRecord::RecordNotFound, with: :error404
  rescue_from StandardError, with: :error500

  def error400(err)
    render json: { error: err.message }, status: :bad_request
  end

  def error401(err)
    render json: { error: err.message }, status: :unauthorized
  end

  # def error403(message)
  #   render json: { error: message }, status: :forbidden
  # end

  def error404(message)
    render json: { error: message }, status: :not_found
  end

  def error500(err)
    if Rails.env.test? || Rails.env.development?
      render json: { error: err.message }, status: :internal_server_error
    end
  end

  private

  def authenticate!
    if Rails.env.test?
      @current_user = User.last
      return
    end
    if request.headers['Authorization'].blank?
      raise ActionController::InvalidAuthenticityToken, 'need login'
    end

    encoded_token = request.headers['Authorization'].split('Bearer ').last
    payload = decode(encoded_token)
    @current_user = User.find(payload['user_id'])
    if @current_user.blank?
      raise ActionController::InvalidAuthenticityToken, 'invalid token'
    end

    @current_user
  end
end
