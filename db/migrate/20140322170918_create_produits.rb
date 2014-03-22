class CreateProduits < ActiveRecord::Migration
  def change
    create_table :produits do |t|
      t.string :name
      t.integer :quantity
      t.integer :measure
      t.decimal :price
      t.boolean :status
      t.boolean :available

      t.timestamps
    end
  end
end
