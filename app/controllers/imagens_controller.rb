class ImagensController < ApplicationController
	def create
		@distro = Distro.find(params[:distro_id])
	    @imagen = @distro.imagens.create(imagen_params)
	    redirect_to distro_path(@distro)
	end
	private
	def imagen_params
		params.require(:imagen).permit(:avatar, :distro_id)
	end
end
