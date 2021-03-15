class SessionsController < ApplicationController


    get '/login' do
        erb :'users/login'
    end

    post '/login' do
        patient = Patient.find_by(email: params["email"]) 
        if patient && user.authenticate(params["password"])
            session[:patient_id] = patient.id
            redirect "/"

        elsif params["email"].empty? || params["password"].empty?
            @error = "Email and password can't be blank."
             erb :'users/login'

            else
                @error = "Account not found"
                erb :'users/login'
        end
     end
end 