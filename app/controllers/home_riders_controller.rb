class HomeRidersController < ApplicationController
  before_action :set_home_rider, only: [:show, :edit, :update, :destroy]
  
    def new
        @meeting = Meeting.find(params[:meeting_id])
        @home_rider = HomeRider.new
        @meeting.build_home_riders
    end

    def create
        @meeting = Meeting.find(params[:meeting_id])
        @meeting.home_riders = HomeRider.new(home_rider_params)
        respond_to do |format|
          if @meeting.save
            format.html { redirect_to meeting_path(@meeting), notice: 'Home riders saved' }
          else
            format.html { redirect_to new_meeting_home_rider_path, notice: 'Oops!' }
          end
        end
      end
  
  

private 

    def set_home_rider
        @home_rider = HomeRiders.find(params[:meeting_id])
    end
    
    def home_rider_params
       params.require(:home_rider).permit(:home_rider_1, :home_rider_2, :home_rider_3,
                                            :home_rider_4, :home_rider_5, :home_rider_6, :home_rider_7) 
    end

  
end