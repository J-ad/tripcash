class AddUsrestToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :user_id, :integer
    add_column :members, :trip_id, :integer
  end
end
