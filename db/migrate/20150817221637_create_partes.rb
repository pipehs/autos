class CreatePartes < ActiveRecord::Migration
  def change
    create_table :partes do |t|
      t.string :nombre
      t.integer :cantidad
      t.references :auto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
