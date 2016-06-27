class DelMemberCountFromTrips < ActiveRecord::Migration[5.0]
  def change
    remove_column :trips, :member_count
  end
end
