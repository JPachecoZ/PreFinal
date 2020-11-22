class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :transaction_type, :transactions

  def transactions
    object.transactions.map do |transaction|
      {
        amount: transaction.amount,
        date: transaction.date,
        notes: transaction.notes
      }
    end
  end
end
