class CreateEnvios < ActiveRecord::Migration[7.0]
  def change
    create_table :envios do |t|
      t.string :nombre
      t.string :comuna
      t.string :direccion
      t.string :email
      t.string :telefono
      t.text :observaciones

      t.timestamps
    end
  end
end
