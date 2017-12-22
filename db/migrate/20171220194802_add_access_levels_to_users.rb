class AddAccessLevelsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :access_level, :integer
  end
end
