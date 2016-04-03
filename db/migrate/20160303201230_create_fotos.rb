class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|

      t.timestamps null: false
    end
  end
end
