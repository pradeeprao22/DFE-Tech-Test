class AddUserReferenceToTester < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :user_id, :integer
    add_index  :trips, :user
  end
end
