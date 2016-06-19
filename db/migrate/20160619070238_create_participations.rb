class CreateParticipations < ActiveRecord::Migration[5.0]
  def change
    create_table :participations do |t|
      t.references :member, foreign_key: true
      t.references :trip, foreign_key: true
      t.boolean :admin

      t.timestamps
    end
  end
end
