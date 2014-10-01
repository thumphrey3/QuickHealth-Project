class AddPatientToCases < ActiveRecord::Migration
  def change
    add_reference :cases, :patient, index: true
  end
end
