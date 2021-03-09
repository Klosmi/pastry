class CreateTools < ActiveRecord::Migration[6.0]
  def change
    create_table :tools do |t|
      t.string :name
      t.text :details
      t.integer :price_by_day
      t.string :picture
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
