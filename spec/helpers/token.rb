# frozen_string_literal: true

module TokenHelper
  shared_context 'Token' do
    let!(:header) { { 'Autorization' => 'Bearer test', 'Content-Type' => 'application/json' } }
  end
end
