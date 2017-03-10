class CreateJoinTabelForFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :user_favorites do |t|
      t.belongs_to :user
      t.belongs_to :list
    end
  end
end
