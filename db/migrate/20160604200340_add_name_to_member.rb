class AddNameToMember < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :name, :string
    add_column :members, :last_name, :string
    add_column :members, :thumbnail, :string
  end
end
