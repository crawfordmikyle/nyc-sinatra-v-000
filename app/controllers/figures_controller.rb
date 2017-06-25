class FiguresController < ApplicationController
	get '/figures' do
		erb :'figures/index'
	end 

	get '/figures/new' do
		erb :'figures/new'
	end 

    post '/figures/new' do
      @figure = Figure.create(params[:figure])
      if !params[:landmark][:name].empty?
        @figure.landmarks << Landmark.find_or_create_by(params[:landmark])
      end

      if !params[:title][:name].empty?
        @figure.titles << Title.find_or_create_by(params[:title])
      end
      
      @figure.save
      redirect to "/figures/#{@figure.id}"
    end

    get '/figures/:id' do
    	@figure = Figure.find_by_id(params[:id])
    	erb :'figures/show'
    end 

    get '/figures/:id/edit' do
      @figure = Figure.find_by_id(params[:id])
      erb :'figures/edit'
    end   

    patch '/figures/:id' do
      @figure = Figure.find_by_id(params[:id])
      @figure.update(params[:figure])
      if !params[:landmark][:name].empty?
        @figure.landmarks << Landmark.find_or_create_by(params[:landmark])
      end

      if !params[:title][:name].empty?
        @figure.titles << Title.find_or_create_by(params[:title])
      end
      
      @figure.save
      redirect to "/figures/#{@figure.id}"
    end 
end 