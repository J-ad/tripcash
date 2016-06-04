class AddDatesToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :started_at, :date
    add_column :trips, :ended_at, :date
    add_column :trips, :destination, :string
  end
end
