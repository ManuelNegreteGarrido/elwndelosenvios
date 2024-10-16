class AddComunaAndDetallesToRetiros < ActiveRecord::Migration[7.0]
  def change
    add_column :retiros, :comuna, :string
    add_column :retiros, :detalles, :text
  end
end
