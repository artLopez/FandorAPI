class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :url_slug, null: false
      t.integer :year, null: false
      t.string :related_film_ids
      t.timestamps
    end
  end
end
