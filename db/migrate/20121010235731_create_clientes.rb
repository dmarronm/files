class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :username
      t.string :name
      t.string :password_hash
      t.string :password_salt
      t.integer :limitSpace
      t.integer :availableSpace
      t.integer :usedBandwith

      t.timestamps
    end
  end
end
