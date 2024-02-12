class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :duration
      t.string :director
      t.decimal :total_gross
      t.date :released_on
      t.string :rating
      t.string :slug

      t.timestamps
    end
  end
end
