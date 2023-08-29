class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :wine, null: false, foreign_key: true
      t.integer :quantity
      t.integer :price
      t.string :address
      t.date :delivery

      t.timestamps
    end
  end
end
