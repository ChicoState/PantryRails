class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :name
      t.text :donor
      t.integer :quantity
      t.date :received
      t.date :expiry
      t.integer :price

      t.timestamps
    end
  end
end
