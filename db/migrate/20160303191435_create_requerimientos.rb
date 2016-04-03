class CreateRequerimientos < ActiveRecord::Migration
  def change
    create_table :requerimientos do |t|
      t.string :requiere
      t.references :distro, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
