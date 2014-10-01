class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|

      t.timestamps
      t.integer :urgency_level
      t.string :status
      t.text :notes 
    end
  end
end
