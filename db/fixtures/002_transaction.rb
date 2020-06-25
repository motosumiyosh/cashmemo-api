# frozen_string_literal: true

Transaction.seed(:id,
                 { id: 1, amount: 5000, content: '武蔵屋', category: 4, transaction_type: 0, user_id: 1 },
                 { id: 2, amount: 900, content: '武蔵屋', category: 0, transaction_type: 1, user_id: 1 })
