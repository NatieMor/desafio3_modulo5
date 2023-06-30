class CreateSerieTvs < ActiveRecord::Migration[7.0]
  def change
    create_table :serie_tvs do |t|
      t.string :nombre
      t.string :synopsis
      t.string :director

      t.timestamps
    end
  end
end
