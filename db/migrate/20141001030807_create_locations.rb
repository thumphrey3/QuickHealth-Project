class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|

      t.timestamps
      t.string :name
      t.string :province
      t.string :country
    end
  end
end
