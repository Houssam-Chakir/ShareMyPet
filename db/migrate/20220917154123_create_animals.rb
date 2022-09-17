class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :category
      t.string :specie
      t.integer :age
      t.float :price_hour
      t.text :bio
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
