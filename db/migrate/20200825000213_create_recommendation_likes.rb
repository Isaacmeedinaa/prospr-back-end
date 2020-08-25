class CreateRecommendationLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendation_likes do |t|
      t.references :browser, null: false, foreign_key: true
      t.references :recommendation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
