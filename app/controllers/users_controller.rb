class UsersController < ApplicationController

    def register
        user = User.create(user_params)
        if user.valid?
            app_response(message: "Registration was successful",
                         status: :created,
                         data: user)
            #render json: {message: "Registration was successful",
            #              data: user}, status: :created
        else
            app_response(message:"Error occured when registering",
                         status: :unprocessaable_entity,
                         data: user.errors)
            #render json: {message: "Error occured when registering"}, status: :unprocessaable_entity
        end
    end

    private
    def user_params
        params.permit(:username, :email, :password)
    end
end
