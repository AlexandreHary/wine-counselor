class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :taste
      t.string :color
      t.string :event
      t.string :meal
      t.string :label

      t.timestamps
    end
  end
end
