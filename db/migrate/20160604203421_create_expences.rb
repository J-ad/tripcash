class CreateExpences < ActiveRecord::Migration[5.0]
  def change
    create_table :expences do |t|

      t.timestamps
    end
  end
end
