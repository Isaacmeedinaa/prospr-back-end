class CreateProspLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :prosp_likes do |t|
      t.references :browser, null: false, foreign_key: true
      t.references :pro, null: false, foreign_key: true
      t.references :prosp, null: false, foreign_key: true

      t.timestamps
    end
  end
end
