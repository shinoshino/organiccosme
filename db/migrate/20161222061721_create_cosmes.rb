class CreateCosmes < ActiveRecord::Migration
  def change
    create_table :cosmes do |t|
      t.string  :name
      t.text    :text
      t.text    :image
      t.timestamps null: false
    end
  end
end
