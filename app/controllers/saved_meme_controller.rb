class SavedMemeController < ApplicationController

	def save
		@saved_meme = MemeContoller.get_by_id(params[:id])
		if @saved.save
			render json: {
				message: "Success!",
				status: 201
			}


end
