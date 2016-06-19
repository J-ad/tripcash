class AddMemberCountToTrip < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :member_count, :int
    remove_column :members, :trip_id
  end
end
