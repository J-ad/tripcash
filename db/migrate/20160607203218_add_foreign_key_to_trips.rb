class AddForeignKeyToTrips < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :trips, :members
  end
end
