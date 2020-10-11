class CreateComplyAdvantageNews < ActiveRecord::Migration[6.0]
  def change
    create_table :comply_advantage_news do |t|
      t.integer :company_number
      t.decimal :score
      t.string :story

      t.timestamps
    end
  end
end
