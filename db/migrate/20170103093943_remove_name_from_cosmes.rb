class RemoveNameFromCosmes < ActiveRecord::Migration
  def change
    remove_column :cosmes, :name, :string
  end
end
