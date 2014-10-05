class RemoveLocationFromHouseholds < ActiveRecord::Migration
  def change
    remove_column :households, :location, :integer
  end
end
