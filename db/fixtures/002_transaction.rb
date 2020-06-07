# frozen_string_literal: true

Transaction.seed(:id,
                 { id: 1, amount: -5000, content: 'ATM出金', large_item: 'ATM', small_item: '引き出し' },
                 { id: 2, amount: 900, content: '武蔵屋', large_item: '飲食', small_item: 'ラーメン屋' })
