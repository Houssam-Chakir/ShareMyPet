class Edit < ActiveRecord::Migration[7.0]
  def change
    rename_column :animals, :image, :photo

  end
end
