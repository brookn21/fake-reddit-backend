class ApplicationController < ActionController::API

    # def current_user
    #     auth_token = request.headers['auth_token']
    #     if auth_token
    #         token = JWT.decode( auth_token, ENV['JWT_TOKEN'])
    #         return User.find_by(id: token['user'] )
    #     else
    #         return nil
    #     end
    # end

    # def authorize
    #     unless current_user
    #         render json: { errors: ['You must be logged in']}, status: :unauthorized
    #     end
    # end
end
