class DistrosController < ApplicationController
  before_action :set_distro, only: [:show, :edit, :update, :destroy]
  before_filter :authorize_admin, only: [:new, :create, :update, :destroy]

  # GET /distros
  # GET /distros.json
  def index
    @distros = Distro.all
  end

  # GET /distros/1
  # GET /distros/1.json
  def show
  end

  # GET /distros/new
  def new
    @distro = Distro.new
    
  end

  # GET /distros/1/edit
  def edit
  end

  # POST /distros
  # POST /distros.json
  def create
    @distro = Distro.new(distro_params)

    respond_to do |format|
      if @distro.save
        format.html { redirect_to @distro, notice: 'Distro was successfully created.' }
        format.json { render :show, status: :created, location: @distro }
      else
        format.html { render :new }
        format.json { render json: @distro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distros/1
  # PATCH/PUT /distros/1.json
  def update
    respond_to do |format|
      if @distro.update(distro_params)
        format.html { redirect_to @distro, notice: 'Distro was successfully updated.' }
        format.json { render :show, status: :ok, location: @distro }
      else
        format.html { render :edit }
        format.json { render json: @distro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distros/1
  # DELETE /distros/1.json
  def destroy
    @distro.destroy
    respond_to do |format|
      format.html { redirect_to distros_url, notice: 'Distro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distro
      @distro = Distro.find(params[:id])
    end

    def authorize_admin
      return unless !usuario_signed_in?
      respond_to do |format|
        format.html { redirect_to distros_url, notice: 'permisos de administrador' }
      end 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distro_params
      params.require(:distro).permit(:nombre, :url, :avatar)
    end
end
