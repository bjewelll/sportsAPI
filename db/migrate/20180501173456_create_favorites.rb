class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user_id_id, foreign_key: true
      t.string :city
      t.string :name

      t.timestamps
    end
  end
end
``
