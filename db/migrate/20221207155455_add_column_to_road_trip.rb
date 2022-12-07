class AddColumnToRoadTrip < ActiveRecord::Migration[7.0]
  def change
    add_column :road_trips, :list, :string
  end
end
