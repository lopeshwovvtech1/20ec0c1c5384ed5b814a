class CreateUserFavoriteShows < ActiveRecord::Migration[5.2]
  def change
    create_table :user_favorite_shows do |t|
      t.references :user, foreign_key: true
      t.references :show, foreign_key: true
      # t.time :show_time

      t.timestamps
    end
  end
end
