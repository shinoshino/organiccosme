class AddUserIdToCosmes < ActiveRecord::Migration
  def change
    add_column :cosmes, :user_id, :integer
  end
end
