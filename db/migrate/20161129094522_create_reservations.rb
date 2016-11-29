class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.date :arrival_date
      t.date :departure_date
      t.integer :nb_cats
      t.integer :price
      t.string :status, default: 'pending'
      t.references :cat, foreign_key: true
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
