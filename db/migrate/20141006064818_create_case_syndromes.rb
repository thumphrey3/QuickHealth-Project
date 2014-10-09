class CreateCaseSyndromes < ActiveRecord::Migration
  def change
    create_table :case_syndromes do |t|
      t.integer :case_id
      t.integer :syndrome_id
      t.timestamps
    end
  end
end
