class DashboardController < ApplicationController
  def index
    @retiros = Retiro.all  # Asegúrate de cargar todas las direcciones de retiro
  end
end
