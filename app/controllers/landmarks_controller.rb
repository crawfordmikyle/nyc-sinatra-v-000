class LandmarksController < ApplicationController
	get '/' do
		erb :'landmarks/index'
	end
end
