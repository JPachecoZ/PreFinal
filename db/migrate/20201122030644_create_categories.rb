class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :transaction_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :categories, [:name, :transaction_type, :user_id], unique: true
  end
end
