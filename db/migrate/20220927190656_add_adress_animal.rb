class AddAdressAnimal < ActiveRecord::Migration[7.0]
  def change
    rename_column :animals, :adress, :address
  end
end
