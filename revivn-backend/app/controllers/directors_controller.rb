class DirectorsController < ApplicationController
    def index
        directors = Director.all
        render json: directors
    end

    def show
        director = Director.find(params[:id])
        render json: director
    end
    
    def create
        director = Director.create({name: params[:name]})
        render json: director
    end

    def update
       director = Director.find(params[:id]) 
       director.update(name: params[:name])
       render json: director
    end

    def edit 
        director = Director.find(params[:id])
        render json: director
      end

    def destroy
        director = Director.find(params[:id])
        director.destroy
        render json: director
    end

end