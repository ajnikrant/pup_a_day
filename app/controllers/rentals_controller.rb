class RentalsController < ApplicationController
    def new
        @rental = Rental.new

        @puppies = Puppy.all
        render :new
    end

    def create
        params_hash = rental_params
        params_hash[:person_id] = session[:person_id]
        @rental = Rental.new(params_hash)
        
        if @rental.valid?
            @rental.save
            redirect_to person_path(@rental.person_id)
        else
            flash[:errors] = @rental.errors.full_messages
            redirect_to new_rental_path
        end
    end

     def destroy
        @rental = Rental.find(params[:id])
        @rental.destroy
        redirect_to person_path(@rental.person_id)
    
    end

    def update
        @rental = Rental.find(params[:id])
        @rental.update(complete:true)
        redirect_to person_path(@rental.person_id)
    end

    private

    def rental_params
        params.require(:rental).permit(:puppy_id, :person_id, :time)
    end

    
end
