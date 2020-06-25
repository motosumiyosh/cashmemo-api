# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'transactions', type: :request do
  include ResponseHelper
  include_context 'JSON response'
  include_context 'Transaction'
  include_context 'Token'

  describe 'GET /api/v1/transactions/1' do
    it 'returns ok' do
      get api_v1_transaction_path(transaction1), headers: header
      expect(response).to have_http_status :ok
      expect(json_response).to include(
        'amount' => 700
      )
    end
  end

  describe 'GET /api/v1/transactions' do
    it 'returns ok' do
      get api_v1_transactions_path, headers: header
      expect(response).to have_http_status :ok
      expect(json_response.length).to eq 2
    end
  end

  describe 'POST /api/v1/transactions' do
    it 'returns ok' do
      post api_v1_transactions_path, params: create_params, headers: header
      expect(response).to have_http_status :ok
      expect(json_response).to include(
        'amount' => 460
      )
    end
  end

  describe 'PATCH /api/v1/transactions/1' do
    it 'returns ok' do
      patch api_v1_transaction_path(transaction1), params: update_params, headers: header
      expect(response).to have_http_status :ok
      expect(json_response).to include(
        'amount' => 1000
      )
    end
  end

  describe 'DELETE /api/v1/transactions/1' do
    it 'returns ok' do
      delete api_v1_transaction_path(transaction1), headers: header

      expect(response).to have_http_status :ok
      puts transaction1.deleted_at
      # expect(transaction1.deleted_at).not_to be_empty
    end
  end
end
