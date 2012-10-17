class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :name
      t.integer :limitSpace
      t.integer :availableSpace

      t.timestamps
    end
  end
end
