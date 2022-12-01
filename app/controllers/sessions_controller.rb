class SessionsController < ApplicationController

    skip_before_action :authorized, only: :create

    
    def create
        credential = Credential.find_by(username: params[:username])
        if credential&.authenticate(params[:password])
            session[:user_id] = credential.adopter.id
            cookies[:user_id] = credential.adopter.id
            render json: credential.adopter, status: :created
        else 
            render json: {error: {login: "Invalid username or password"}}, status: :unauthorized
        end
    end

    def destroy
        session.delete :user_id
        head :no_content
    end

end
