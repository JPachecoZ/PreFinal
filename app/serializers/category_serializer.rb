class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :transaction_type, :color, :icon, :transactions

  def transactions
    object.transactions.map do |transaction|
      {
        id: transaction.id,
        amount: transaction.amount,
        date: transaction.date,
        notes: transaction.notes
      }
    end
  end
end
