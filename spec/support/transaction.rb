# frozen_string_literal: true

shared_context 'Transaction' do
  let!(:user) { create(:user) }
  let!(:transaction1) { create(:transaction, user: user) }
  let!(:transaction2) do
    create(
      :transaction, amount: 3000, content: 'Hibino Eats配送費', category: 1, transaction_type: 0, user: user
    )
  end
  let!(:create_params) do
    {
      transaction: {
        content: '小杉湯＠高円寺',
        amount: 460,
        category: 2,
        transaction_type: 1
      }
    }
  end
  let!(:update_params) do
    {
      transaction: {
        content: '小杉湯＠高円寺',
        amount: 1000,
        category: 2,
        transaction_type: 1
      }
    }
  end
end
