class HeatsController < ApplicationController


  
  def new
    @meeting = Meeting.find(params[:meeting_id])
    @heat = @meeting.heats.where(params[:id])
    @home_riders = @meeting.home_riders
    @away_riders = @meeting.away_riders
    @heat = Heat.new
    @heat.build_meeting
    heat_number_set
  end

  def create
    @meeting = Meeting.find(params[:meeting_id])
    @heat = Heat.new(heat_params)
    respond_to do |format|
      if @meeting.heats << @heat
        format.html { redirect_to meeting_path(@meeting), notice: 'Heat saved' }
      else
        format.html { redirect_to new_meeting_heat_path, notice: 'Oops!' }
      end
    end
  end
  


  def edit
    @meeting = Meeting.find(params[:meeting_id])
    @heat = @meeting.heats.find(params[:id])
    @home_riders = @meeting.home_riders
    @away_riders = @meeting.away_riders
  end

  def update
    @meeting = Meeting.find(params[:meeting_id])
    @heat = @meeting.heats.find(params[:id])
    respond_to do |format|
      if @heat.update(heat_params)
        format.html { redirect_to meeting_path(@meeting), notice: 'Heat updated' }
      else
        format.html { render :new, notice: 'Oops!' }
      end
    end
  end
  
  
  
  private
  
  def heat_number_set
        last_heat = @meeting.heats
        if last_heat.nil?
            heat_number = 1
        else
            heat_number = last_heat.count + 1
        end
        @heat.heat_number = heat_number
  end
  

  
  
  def heat_params
      params.require(:heat).permit(:heat_number, :heat_time, 
                              :red_gate, :red_score, :red_rider,
                              :blue_gate, :blue_score, :blue_rider,
                              :white_gate, :white_score, :white_rider,
                              :yellow_gate, :yellow_score, :yellow_rider)
  end
  
end
