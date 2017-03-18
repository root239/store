class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :category
      t.decimal :price_average
      t.string :source
      t.string :summary

      t.timestamps
    end
  end
end
