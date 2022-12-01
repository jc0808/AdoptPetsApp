class AdoptersController < ApplicationController

    skip_before_action :authorized, only: :index

    def index
        render json: Adopter.all, status: :ok
    end

    def destroy
        user = Adopter.find(params[:id]).destroy
        head :no_content
    end

end
