class CreateRecommendationImages < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendation_images do |t|
      t.string :img_url
      t.references :recommendation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
