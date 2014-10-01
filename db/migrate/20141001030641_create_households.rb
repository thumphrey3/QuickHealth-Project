class CreateHouseholds < ActiveRecord::Migration
  def change
    create_table :households do |t|

      t.timestamps
      t.string :name 
      t.integer :location
      t.string :mobile_number
      t.string :email
    end
  end
end
