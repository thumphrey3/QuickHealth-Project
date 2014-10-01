class AddSyndromeInformation < ActiveRecord::Migration
  def change
  	change_table :syndromes do |t|

  	t.string :name
  	t.string :image
  	t.string :description
  	t.string :text_code
  	t.integer :severity_score
  	t.string :health_instruction
  end
  end
end
