class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :usercode
      t.string :full_name
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
