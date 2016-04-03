class CreateDistros < ActiveRecord::Migration
  def change
    create_table :distros do |t|
      t.string :nombre
      t.string :url

      t.timestamps null: false
    end
  end
end
