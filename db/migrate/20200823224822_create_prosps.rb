class CreateProsps < ActiveRecord::Migration[6.0]
  def change
    create_table :prosps do |t|
      t.string :title
      t.string :content
      t.references :pro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
