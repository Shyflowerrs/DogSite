class DropQuotesTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :quotes
  end
end
