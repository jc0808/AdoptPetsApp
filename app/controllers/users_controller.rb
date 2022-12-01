class UsersController < ApplicationController
    wrap_parameters format: []

    skip_before_action :authorized, only: [:create, :update]

    def create
        adopter = Adopter.create!(adopter_params)
        Adopter.find_by(id: adopter.id).createCredentials(credential_params)
        session[:user_id] = adopter.id
        cookies[:user_id] = adopter.id
        render json: adopter, status: :created
    end

    def show
        user = Adopter.find(session[:user_id])
        render json: user
    end

    def update
        userCredential = Credential.find(reset_password_params[:id])
        userCredential.update!(password: reset_password_params[:password])
    end



    private

    def adopter_params
        params.permit(:firstName, :lastName)
    end

    def credential_params
        params[:credentials].permit(:username, :password)
    end

    def reset_password_params
        params.permit(:id, :password)
    end
end
