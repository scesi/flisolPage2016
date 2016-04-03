class RequerimientosController < ApplicationController
	def create
		@distro = Distro.find(params[:distro_id])
	    @requerimiento = @distro.requerimientos.create(requerimiento_params)
	    redirect_to distro_path(@distro)
	end
	private
	def requerimiento_params
		params.require(:requerimiento).permit(:requiere, :distro_id)
	end
end
