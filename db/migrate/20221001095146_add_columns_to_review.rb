class AddColumnsToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :content, :text
    add_reference :reviews, :animal, null: false, foreign_key: true
  end
end
