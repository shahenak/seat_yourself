class AddCapacityToRestaurants < ActiveRecord::Migration
  def change
    # change_table :restaurants do |t|
    #   t.integer :capacity
    # end

    add_column :restaurants, :capacity, :integer
  end
end
