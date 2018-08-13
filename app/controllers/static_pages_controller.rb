class StaticPagesController < ApplicationController
  
  def gate
    find_meeting
  end

  def rider
      find_meeting
  end
  
  private
  
  def find_meeting
    @meeting = Meeting.find(params[:meeting_id])
  end
  

end