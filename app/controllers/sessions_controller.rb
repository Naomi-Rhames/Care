class SessionsController < ApplicationController


    get '/login' do
        erb :'users/login'
    end

    post '/login' do
        if params["username"].empty? || params["password"].empty?
            @error = "Username and password can't be blank."
             erb :'users/login'
        # else
        #     user = User.find_by(username: params["username"]) 
        #     if user && user.authenticate(params["password"])
        #         session[:patient_id] = patient.id
        #         redirect '/makeup'
        #     else
        #         @error = "Account not found"
        #         erb :'users/login'
        end
     end
end