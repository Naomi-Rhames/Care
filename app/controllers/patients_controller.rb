class PatientsController < ApplicationController

get '/signup' do
    erb :'/users/signup'
 end
 post '/signup' do 
   if patient = Patient.new(params)
    patient.save
       session[:patient_id] = patient.id
       redirect '/'
   elsif
     params["username"].empty? || params["password"].empty?
            @error = "Invalid credentials"
        erb :'/users/signup'
        end
    end


end