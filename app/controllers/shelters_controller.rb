class SheltersController < ApplicationController

    def index
        render json: Shelter.all, status: :ok
    end
end
