class CreateProspImages < ActiveRecord::Migration[6.0]
  def change
    create_table :prosp_images do |t|
      t.string :img_url
      t.string :img_type
      t.references :prosp, null: false, foreign_key: true

      t.timestamps
    end
  end
end
