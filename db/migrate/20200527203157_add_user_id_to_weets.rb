class AddUserIdToWeets < ActiveRecord::Migration[6.0]
  def change
    add_column :weets, :user_id, :integer
  end
end
