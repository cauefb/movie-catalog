class AddGenreToMovies < ActiveRecord::Migration[7.2]
  def change
    add_reference :movies, :genre, null: false, foreign_key: true, default: 0
  end
end
