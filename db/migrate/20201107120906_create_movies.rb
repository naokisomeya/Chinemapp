class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.references :user, foreign_key: true
      t.string :movie_name
      t.text :movie_body
      t.string :movie_image

      t.timestamps
    end
  end
end
