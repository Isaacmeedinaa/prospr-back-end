class CreateProspComments < ActiveRecord::Migration[6.0]
  def change
    create_table :prosp_comments do |t|
      t.string :content
      t.references :browser, null: false, foreign_key: true
      t.references :prosp, null: false, foreign_key: true

      t.timestamps
    end
  end
end
