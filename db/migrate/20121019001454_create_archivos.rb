class CreateArchivos < ActiveRecord::Migration
  def change
    create_table :archivos do |t|
      t.string :path
      t.integer :size
      t.datetime :fecha

      t.timestamps
    end
  end
end
