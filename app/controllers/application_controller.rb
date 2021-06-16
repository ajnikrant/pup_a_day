class ApplicationController < ActionController::Base

    before_action :find_current_person

    def find_current_person
        @current_person = Person.find_by(id: session[:person_id])
    end
end
