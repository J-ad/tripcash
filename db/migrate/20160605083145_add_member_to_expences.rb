class AddMemberToExpences < ActiveRecord::Migration[5.0]
  def change
    add_column :expences, :member_id, :integer
    add_column :expences, :trip_id, :integer
  end
end
