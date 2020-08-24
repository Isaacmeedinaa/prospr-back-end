class CreatePros < ActiveRecord::Migration[6.0]
  def change
    create_table :pros do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :date_of_birth
      t.string :business_name
      t.string :business_mission
      t.string :business_year_founded
      t.string :business_website
      t.string :business_industry
      t.string :address_line_one
      t.string :address_line_two
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
