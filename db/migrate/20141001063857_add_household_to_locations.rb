class AddHouseholdToLocations < ActiveRecord::Migration
  def change
    add_reference :locations, :household, index: true
  end
end
