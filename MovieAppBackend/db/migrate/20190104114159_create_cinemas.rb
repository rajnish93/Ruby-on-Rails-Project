class CreateCinemas < ActiveRecord::Migration[5.2]
  def change
    create_table :cinemas do |t|
      t.string :title
      t.belongs_to :genre, foreign_key: true
      t.integer :numberInStock
      t.decimal :dailyRentalRate, precision: 2, scale: 1

      t.timestamps
    end
    add_index :cinemas, :title, unique: true
  end
end
