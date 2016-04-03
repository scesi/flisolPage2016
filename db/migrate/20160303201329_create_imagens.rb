class CreateImagens < ActiveRecord::Migration
  def change
    create_table :imagens do |t|
      t.references :distro, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
