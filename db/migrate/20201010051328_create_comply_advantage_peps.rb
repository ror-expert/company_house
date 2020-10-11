class CreateComplyAdvantagePeps < ActiveRecord::Migration[6.0]
  def change
    create_table :comply_advantage_peps do |t|
      t.integer :company_number
      t.string :person_name

      t.timestamps
    end
  end
end
