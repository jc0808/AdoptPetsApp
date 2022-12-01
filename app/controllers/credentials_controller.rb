class CredentialsController < ApplicationController

    skip_before_action :authorized, only: [:index]

    def index
        render json: Credential.all, status: :ok
    end
end
