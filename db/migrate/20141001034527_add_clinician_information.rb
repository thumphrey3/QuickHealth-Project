class AddClinicianInformation < ActiveRecord::Migration
  def change
  	change_table :clinicians do |t|

  	  t.string :national_id
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.integer :age
      t.string :role
      t.string :organization
      t.
  	end

  end
end
