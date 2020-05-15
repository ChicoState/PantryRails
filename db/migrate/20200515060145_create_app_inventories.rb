class CreateAppInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :app_inventories do |t|
      t.string :appliancename
      t.integer :totalquantity
      t.datetime :date

      t.timestamps
    end
  end
end
