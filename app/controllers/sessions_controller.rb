class SessionsController < ApplicationController

    def logout
       session.delete(:person_id)
       redirect_to main_path
    end

    def new_login
        # render new
    end

    def create_login
        @person = Person.find_by(username: params[:session][:username])
    
        if @person && @person.authenticate(params[:session][:password])
          session[:person_id] = @person.id
          redirect_to person_path(@person)
        else
          flash[:error] = "Password or Username is incorrect"
          redirect_to new_login_path
        end 
      end 

end