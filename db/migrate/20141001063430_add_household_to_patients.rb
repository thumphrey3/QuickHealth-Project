class AddHouseholdToPatients < ActiveRecord::Migration
  def change
    add_reference :patients, :household, index: true
  end
end
