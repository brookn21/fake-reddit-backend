class UsersController < ApplicationController

    def profile
        auth_token = request.headers['Authenticate']
        if auth_token
            token = JWT.decode( auth_token, ENV['JWT_TOKEN'])[0]
            render json: User.find_by( id: token['user'] )
        else
            return nil
        end
    end
end
