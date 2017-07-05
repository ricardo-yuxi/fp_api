class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :deliver_order_number
      t.integer :local_status, default: 0
      t.integer :auth_state
      t.text :notes
      t.references :user

      t.timestamps
    end
  end
end
