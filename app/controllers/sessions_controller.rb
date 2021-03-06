class SessionsController < ApplicationController

    skip_before_action :authorized, only: %i[new create]

    def new
    end

    def create
        @user = User.find_by(email: params[:email])
        if @user&.authenticate(params[:password])
            session[:user_id] = @user.id
            if params[:redirect_url].nil?
                redirect_to @user
            else
                redirect_to params[:redirect_url]
            end
        else
            redirect_to '/login'
        end
    end

    def login
    end

    def welcome
    end

    def destroy
        session.delete(:user_id)
        reset_session
        redirect_to root_url
    end

end
