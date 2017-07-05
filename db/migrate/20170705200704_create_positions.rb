class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :name
      t.integer :number
      t.integer :quantity
      t.references :order, index: true

      t.timestamps
    end
  end
end
