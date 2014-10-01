class AddPatientInformation < ActiveRecord::Migration
  def change
  	change_table :patients do |t|

  	  t.string :national_id
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.integer :age
      t.integer :household
      t.string :language
      t.text :medication
      t.text :conditions
    end
  end
end
