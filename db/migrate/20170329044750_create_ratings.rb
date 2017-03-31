class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
        t.integer :rating, null: false
        t.integer :film_id, null: false
        t.integer :user_id
        t.timestamps
    end
  end
end
