class AddInfoToCosmes < ActiveRecord::Migration
  def change
    add_column :cosmes, :info, :string
  end
end
