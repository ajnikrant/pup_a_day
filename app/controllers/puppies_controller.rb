class PuppiesController < ApplicationController
    def index
        @puppies = Puppy.all
    end

    def show
        @puppy = Puppy.find(params[:id])
    end

    def update
        @puppy = Puppy.find(params[:id])
        @puppy.update(adoption:true, person_id:session["person_id"])
        redirect_to person_path(@puppy.person_id)
    end


end
