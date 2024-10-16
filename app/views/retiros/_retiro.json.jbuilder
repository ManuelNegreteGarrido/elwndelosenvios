json.extract! retiro, :id, :nombre, :direccion, :comuna, :detalles, :email, :telefono, :created_at, :updated_at
json.url retiro_url(retiro, format: :json)
