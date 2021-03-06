class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :released_year
      t.float :price
      t.text :description
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
