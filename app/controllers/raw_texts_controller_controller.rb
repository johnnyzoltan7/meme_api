class RawTextsControllerController < ApplicationController
	def new
		@RawText = RawText.new
	end

	def create
		@RawText = RawText.new(textParams)
	end

	private

	def textParams
		type: params[:type],
		text: params[:phrase]
	end

end
