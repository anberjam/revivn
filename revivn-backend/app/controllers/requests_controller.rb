class RequestsController < ApplicationController
    
    def index
        requests = Request.all
        render json: requests
    end

    def show
        request = Request.find(params[:id])
        render json: request
    end
    
    def create
        request = Request.create({date: params[:date], location: params[:location], userid: params[:userid]})
        render json: request
    end

    def update
       request = Request.find(params[:id]) 
       request.update(date: params[:date], location: params[:location], userid: params[:userid])
       render json: request
    end

    def edit 
        request = Request.find(params[:id])
        render json: request
      end

    def destroy
        request = Request.find(params[:id])
        request.destroy
        render json: request
    end

end