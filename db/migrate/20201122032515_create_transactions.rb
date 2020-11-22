class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :amount
      t.string :notes
      t.date :date
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
