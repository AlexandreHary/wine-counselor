class CreateOptionTags < ActiveRecord::Migration[7.0]
  def change
    create_table :option_tags do |t|
      t.references :option, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
