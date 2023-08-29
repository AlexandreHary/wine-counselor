class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.integer :position
      t.boolean :last

      t.timestamps
    end
  end
end
