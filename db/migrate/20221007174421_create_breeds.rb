class CreateBreeds < ActiveRecord::Migration[7.0]
  def change
    create_table :breeds do |t|
      t.string :breed_group
      t.string :bred_for

      t.timestamps
    end
  end
end
