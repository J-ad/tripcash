class AddMemberToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :member_id, :int
  end
end
