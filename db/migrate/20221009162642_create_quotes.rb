class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.string :dog_quote

      t.timestamps
    end
  end
end
