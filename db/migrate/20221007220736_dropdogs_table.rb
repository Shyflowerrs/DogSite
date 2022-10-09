class DropdogsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :dogs
  end
end
