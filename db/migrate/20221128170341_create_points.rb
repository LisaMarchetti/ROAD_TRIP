class CreatePoints < ActiveRecord::Migration[7.0]
  def change
    create_table :points do |t|
      t.float :latitude
      t.float :longitude
      t.string :city
      t.string :country
      t.string :continent
      t.date :start_date
      t.date :end_date
      t.text :description
      t.float :budget_day
      t.string :local_language
      t.string :currency
      t.string :housing_type
      t.string :visits_activities
      t.references :road_trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
