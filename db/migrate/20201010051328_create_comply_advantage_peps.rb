class CreateComplyAdvantagePeps < ActiveRecord::Migration[6.0]
  def change
    create_table :comply_advantage_peps do |t|
      t.references :company, null: false, foreign_key: true
      t.string :person_name

      t.timestamps
    end
  end
end
