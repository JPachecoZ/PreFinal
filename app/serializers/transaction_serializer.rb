class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :date, :notes
end
