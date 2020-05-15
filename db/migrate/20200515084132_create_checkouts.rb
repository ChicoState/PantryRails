class CreateCheckouts < ActiveRecord::Migration[6.0]
  def change
    create_table :checkouts do |t|
      t.string :itemname
      t.integer :itemquantitycount
      t.string :itemquantityweight
      t.datetime :checkoutdate
      t.integer :staffid

      t.timestamps
    end
  end
end
