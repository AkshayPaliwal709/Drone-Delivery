class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :phonenumber
      t.string :address

      t.timestamps
    end
  end
end
