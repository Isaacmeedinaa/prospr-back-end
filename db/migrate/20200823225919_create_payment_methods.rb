class CreatePaymentMethods < ActiveRecord::Migration[6.0]
  def change
    create_table :payment_methods do |t|
      t.string :card_number
      t.string :month
      t.string :year
      t.string :cvv
      t.string :card_type
      t.string :first_name
      t.string :last_name
      t.string :address_line_one
      t.string :address_line_two
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.references :pro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
