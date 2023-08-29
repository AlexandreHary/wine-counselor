class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.float :rating
      t.string :name
      t.text :description
      t.integer :year
      t.string :appellation

      t.timestamps
    end
  end
end
