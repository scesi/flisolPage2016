class AddhourToCharlas < ActiveRecord::Migration
  def change
  	add_column :charlas, :horas, :string
	add_column :charlas, :minutos, :string
  end
end
