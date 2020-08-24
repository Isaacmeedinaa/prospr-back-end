class CreateBrowsers < ActiveRecord::Migration[6.0]
  def change
    create_table :browsers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :date_of_birth
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.string :profile_img_url
      t.string :password_digest

      t.timestamps
    end
  end
end
