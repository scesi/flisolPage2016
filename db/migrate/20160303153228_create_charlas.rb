class CreateCharlas < ActiveRecord::Migration
  def change
    create_table :charlas do |t|
      t.string :expositor
      t.text :resumen
      t.datetime :hora
      t.string :tema

      t.timestamps null: false
    end
  end
end
