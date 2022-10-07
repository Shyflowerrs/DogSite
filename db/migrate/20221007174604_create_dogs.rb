class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :temperament
      t.string :life_span
      t.string :origin
      t.integer :breed_id
      t.integer :image_id

      t.timestamps
    end
  end
end
