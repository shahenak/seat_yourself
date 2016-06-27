class ChangeDateTimetoTime < ActiveRecord::Migration
  def change

    remove_column :reservations, :time
    add_column :reservations, :time, :time

  end
end
