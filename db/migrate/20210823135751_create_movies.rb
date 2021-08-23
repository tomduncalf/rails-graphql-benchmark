class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :imdb_id
      t.string :title
      t.integer :year
      t.string :image_url
      t.float :imdb_rating
      t.text :imdb_rating_count
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
