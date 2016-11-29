class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.string :kind
      t.integer :capacity
      t.integer :price
      t.boolean :catnip
      t.string :photo
      t.string :description
      t.references :cat, foreign_key: true

      t.timestamps
    end
  end
end
