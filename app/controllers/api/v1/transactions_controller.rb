# frozen_string_literal: true

class Api::V1::TransactionsController < ApplicationController
  before_action :set_transaction, only: %i(update destroy show)

  def create
    transaction = @current_user.transactions.create!(transaction_params)
    render json: transaction
  end

  def update
    @transaction.update!(transaction_params)
    render json: @transaction
  end

  def destroy
    @transaction.destroy
    render json: @transaction, status: :ok
  end

  def index
    transactions = @current_user.transactions
    render json: transactions
  end

  def show
    render json: @transaction
  end

  private

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(
      :amount, :content, :category, :transaction_type
    )
  end
end
