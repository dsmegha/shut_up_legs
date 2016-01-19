class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.string :racetype
      t.date :date
      t.string :location

      t.timestamps null: false
    end
  end
end
