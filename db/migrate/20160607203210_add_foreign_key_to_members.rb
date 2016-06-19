class AddForeignKeyToMembers < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :members, :trips
  end
end
