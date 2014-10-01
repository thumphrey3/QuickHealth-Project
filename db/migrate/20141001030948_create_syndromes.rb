class CreateSyndromes < ActiveRecord::Migration
  def change
    create_table :syndromes do |t|

      t.timestamps
    end
  end
end
