class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.text :address
      t.string :mobile_no

      t.timestamps
    end
  end
end
