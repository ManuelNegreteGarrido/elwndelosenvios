class CreateRetiros < ActiveRecord::Migration[7.0]
  def change
    create_table :retiros do |t|
      t.string :nombre
      t.string :direccion
      t.string :email
      t.string :telefono

      t.timestamps
    end
  end
end
