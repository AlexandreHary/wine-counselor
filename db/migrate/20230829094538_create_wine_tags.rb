class CreateWineTags < ActiveRecord::Migration[7.0]
  def change
    create_table :wine_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :wine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
