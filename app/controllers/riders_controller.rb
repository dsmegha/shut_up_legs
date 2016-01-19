class RidersController < ApplicationController
  def new
  	@rider = Rider.new
  end
  def create
  	@rider = Rider.new(riders_params)
  	@rider.paid = true  
  	@rider.race_id = 1
  	if @rider.save
  		flash[:success] = "Thanks for Registering! We will get back to you shortly."
		redirect_to '/register'    
	else
      render 'new'
    end
  end
  private

    def riders_params
      params.require(:rider).permit(:name, :email, :gender,
                                   :bike, :category, :transaction_id,
                                   :age, :emergency)
    end
end
