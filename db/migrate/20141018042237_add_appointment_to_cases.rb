class AddAppointmentToCases < ActiveRecord::Migration
  def change
    add_column :cases, :appointment, :datetime
  end
end
