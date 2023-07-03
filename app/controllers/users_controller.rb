class UsersController < ApplicationController
    def show
        user = User.find_by(user_params)
        if user
            render json: user, include: :items
        render
    end

    private

    def user_params
        params.permit(:username, :city)
    end
end
