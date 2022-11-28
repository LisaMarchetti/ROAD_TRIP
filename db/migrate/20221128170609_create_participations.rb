class CreateParticipations < ActiveRecord::Migration[7.0]
  def change
    create_table :participations do |t|
      t.boolean :validated
      t.references :user, null: false, foreign_key: true
      t.references :road_trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
