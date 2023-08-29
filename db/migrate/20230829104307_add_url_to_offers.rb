class AddUrlToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :url, :string
  end
end
