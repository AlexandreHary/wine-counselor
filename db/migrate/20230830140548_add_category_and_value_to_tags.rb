class AddCategoryAndValueToTags < ActiveRecord::Migration[7.0]
  def change
    %i[taste color event meal label].each do |property|
      remove_column :tags, property
    end

    add_column :tags, :category, :string
    add_column :tags, :value, :string
  end
end
