class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  # GET /meetings
  def index
    @meetings = Meeting.all.order(date: :desc)
  end

  # GET /meetings/1
  def show
    @home_rider = @meeting.home_riders
  end

  # GET /meetings/new
  def new
    @meeting = Meeting.new
    @team_names = Team.distinct(:team_name)
  end

  # GET /meetings/1/edit
  def edit
  end

  # POST /meetings
  def create
    @meeting = Meeting.new(meeting_params)

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to @meeting, notice: 'Meeting was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /meetings/1
  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to @meeting, notice: 'Meeting was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /meetings/1
  def destroy
    @meeting.destroy
    respond_to do |format|
      format.html { redirect_to meetings_url, notice: 'Meeting was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_params
      params.require(:meeting).permit(:home_team_name, :away_team_name, :date, :gate, 
                                      heat_attributes: [:heat_number, :heat_time,
                                       :red_gate, :red_score, :red_rider,
                                       :blue_gate, :blue_score, :blue_rider,
                                       :white_gate, :white_score, :white_rider,
                                       :yellow_gate, :yellow_score, :yellow_rider],
                                       home_riders_attributes: [:home_rider_1, :home_rider_2,
                                       :home_rider_3, :home_rider_4, :home_rider_5,
                                       :home_rider_6, :home_rider_7])
    end
end
 

