class CreateCats < ActiveRecord::Migration[5.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.boolean :male
      t.string :mail
      t.string :phone_number
      t.date :birthday
      t.string :profile_picture

      t.timestamps
    end
  end
end
