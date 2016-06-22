class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :address
      t.string :phone
      t.string :name

      t.timestamps null: false
    end
  end
end
