class RemoveHouseholdFromPatients < ActiveRecord::Migration
  def change
    remove_column :patients, :household, :integer
  end
end
