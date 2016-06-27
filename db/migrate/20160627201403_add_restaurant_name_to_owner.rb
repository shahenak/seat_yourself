class AddRestaurantNameToOwner < ActiveRecord::Migration
  def change
    add_column :owners, :restaurant_name, :string
  end
end
