class PeopleController < ApplicationController

    def show
        @person = Person.find(params[:id])
      
    end

    def new
        @person = Person.new
    end

    def create
        @person = Person.create(people_params)
        if @person.valid?
            session[:person_id] = @person.id
            redirect_to person_path(@person)
        else
            flash[:errors] = @person.errors.full_messages
            redirect_to new_person_path
        end
    end

    private

    def people_params
        params.require(:person).permit(:name, :age, :gender, :username, :email, :password)
    end

end
