class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :price
      t.integer :size

      t.timestamps
    end
  end
end
