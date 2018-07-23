class HomeRidersController < ApplicationController

  
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
    
    def edit
      @meeting = Meeting.find(params[:meeting_id])
      @home_rider = @meeting.home_riders
    end
    
    def update
      @meeting = Meeting.find(params[:meeting_id])
      respond_to do |format|
        if @meeting.home_riders.update(home_rider_params)
          format.html { redirect_to (meeting_path(@meeting)), notice: 'Home riders updated.' }
        else
          format.html { render :edit, notice: 'Oops'  }
  
        end
      end
    end
  
  

private 

    def home_rider_params
       params.require(:home_rider).permit(:home_rider_1, :home_rider_2, :home_rider_3,
                                            :home_rider_4, :home_rider_5, :home_rider_6, :home_rider_7) 
    end

  
end