class PatientsController < ApplicationController

    get '/signup' do
        erb :'/users/signup'
    end 

    post '/signup' do 
        # params.inspect
    patient = Patient.new(params)
        if patient.save
        session[:id] 
        redirect '/'
        else 
            @error = "Invalid credentials"
            erb :'/users/signup'
            # binding.pry
        end
    end
end