class AddAmmountToExpences < ActiveRecord::Migration[5.0]
  def change
    add_column :expences, :ammount, :integer
    add_column :expences, :what_for, :string
  end
end
