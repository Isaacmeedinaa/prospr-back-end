class CreateRecommendations < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendations do |t|
      t.string :title
      t.string :content
      t.references :browser, null: false, foreign_key: true

      t.timestamps
    end
  end
end
