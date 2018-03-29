class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :drone, foreign_key: true
      t.references :person, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
