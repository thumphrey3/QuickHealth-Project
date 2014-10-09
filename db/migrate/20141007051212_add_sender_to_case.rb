class AddSenderToCase < ActiveRecord::Migration
  def change
    add_column :cases, :sender, :string
  end
end
