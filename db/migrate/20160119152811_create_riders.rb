class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.string :name
      t.string :email
      t.string :bike
      t.string :category
      t.boolean :paid
      t.string :emergency
      t.string :gender
      t.integer :age
      t.string :transaction_id
      t.references :race, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
