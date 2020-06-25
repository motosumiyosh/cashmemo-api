# frozen_string_literal: true

module TokenHelper
  shared_context 'Token' do
    let!(:header) { { 'Autorization' => 'Bearer test' } }
  end
end
