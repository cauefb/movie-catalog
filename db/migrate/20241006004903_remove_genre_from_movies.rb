class RemoveGenreFromMovies < ActiveRecord::Migration[7.2]
  def change
    remove_column :movies, :genre, :string
  end
end
