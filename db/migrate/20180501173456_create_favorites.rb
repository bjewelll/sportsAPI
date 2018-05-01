class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user_id, foreign_key: true
      t.references :team_id, foreign_key: true

      t.timestamps
    end
  end
end
