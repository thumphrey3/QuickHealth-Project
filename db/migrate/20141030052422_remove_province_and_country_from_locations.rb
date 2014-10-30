class RemoveProvinceAndCountryFromLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :province, :string
    remove_column :locations, :country, :string
  end
end
