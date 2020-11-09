class AddVisitedToBucketlistLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :bucketlist_locations, :visited, :boolean, default: false
  end
end
