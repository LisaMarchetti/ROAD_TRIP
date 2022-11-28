class CreateRoadTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :road_trips do |t|
      t.string :title
      t.string :description
      t.string :native_language
      t.string :other_language
      t.string :work
      t.integer :number_participants
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
