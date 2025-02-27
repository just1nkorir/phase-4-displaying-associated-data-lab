class UsersController < ApplicationController
    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, include: :items, status: ok
        else
            render json: { error: 'user not found'}, status: not_found
        end
    end
end
