class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.integer :post_code
      t.string :city

      t.timestamps
    end
  end
end
