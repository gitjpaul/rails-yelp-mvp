class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :adress
      t.integer :phonenumber
      t.string :category

      t.timestamps
    end
  end
end
