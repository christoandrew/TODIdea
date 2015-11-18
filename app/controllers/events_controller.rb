class EventsController < ApplicationController
  def index
    @events = Event.paginate(:page => params[:page], :per_page => 6)
  end

  def show
    
  end
end
