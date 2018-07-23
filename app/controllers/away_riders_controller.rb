class AwayRidersController < ApplicationController

    def new
        @meeting = Meeting.find(params[:meeting_id])
        @away_rider = AwayRider.new
        @meeting.build_away_riders
    end

    def create
      @meeting = Meeting.find(params[:meeting_id])
      @meeting.away_riders = AwayRider.new(away_rider_params)
      respond_to do |format|
        if @meeting.save
          format.html { redirect_to meeting_path(@meeting), notice: 'Away riders saved' }
        else
          format.html { redirect_to new_meeting_away_rider_path, notice: 'Oops!' }
        end
      end
    end
      
    def edit
      @meeting = Meeting.find(params[:meeting_id])
      @away_rider = @meeting.away_riders
    end
    
    def update
      @meeting = Meeting.find(params[:meeting_id])
      respond_to do |format|
        if @meeting.away_riders.update(away_rider_params)
          format.html { redirect_to (meeting_path(@meeting)), notice: 'Away riders updated.' }
        else
          format.html { render :edit, notice: 'Oops'  }
  
        end
      end
    end
  
  

private 

    def away_rider_params
       params.require(:away_rider).permit(:away_rider_1, :away_rider_2, :away_rider_3,
                                            :away_rider_4, :away_rider_5, :away_rider_6, :away_rider_7) 
    end

  
end