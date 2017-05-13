class QmarkController < ApplicationController
	def else
		@else = params[:else]
		@something = params[:something]
	end
end