json.extract! envio, :id, :nombre, :comuna, :direccion, :email, :telefono, :observaciones, :created_at, :updated_at
json.url envio_url(envio, format: :json)
