class RetirosController < ApplicationController
  before_action :set_retiro, only: %i[ show edit update destroy ]

  # GET /retiros or /retiros.json
  def index
    @retiros = Retiro.all
  end

  # GET /retiros/1 or /retiros/1.json
  def show
  end

  # GET /retiros/new
  def new
    @retiro = Retiro.new
  end

  # GET /retiros/1/edit
  def edit
  end

  # POST /retiros or /retiros.json
  def create
    @retiro = Retiro.new(retiro_params)

    respond_to do |format|
      if @retiro.save
        format.html { redirect_to @retiro, notice: "Retiro was successfully created." }
        format.json { render :show, status: :created, location: @retiro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @retiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retiros/1 or /retiros/1.json
  def update
    respond_to do |format|
      if @retiro.update(retiro_params)
        format.html { redirect_to @retiro, notice: "Retiro was successfully updated." }
        format.json { render :show, status: :ok, location: @retiro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @retiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retiros/1 or /retiros/1.json
  def destroy
    @retiro.destroy

    respond_to do |format|
      format.html { redirect_to retiros_path, status: :see_other, notice: "Retiro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retiro
      @retiro = Retiro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def retiro_params
      params.require(:retiro).permit(:nombre, :direccion, :comuna, :detalles, :email, :telefono)
    end
end
