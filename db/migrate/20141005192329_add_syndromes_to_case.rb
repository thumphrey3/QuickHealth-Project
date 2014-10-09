class AddSyndromesToCase < ActiveRecord::Migration
  def change
    add_reference :cases, :syndrome, index: true
  end
end
