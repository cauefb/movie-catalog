class CreateMovies < ActiveRecord::Migration[7.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
      t.text :synopsis
      t.string :country_of_origin
      t.integer :duration
      t.string :director
      t.string :genre

      t.timestamps
    end
  end
end
