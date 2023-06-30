class CreatePeliculas < ActiveRecord::Migration[7.0]
  def change
    create_table :peliculas do |t|
      t.string :nombre
      t.string :synopsis
      t.string :director

      t.timestamps
    end
  end
end
