class EventsController < ApplicationController

   layout "edit", only: [:new, :create, :show, :edit, :update, :destroy]


  def index
    @events = Event.all.order("created_at DESC")
  end

  def new
    @event = Events.new
  end

  def create
     @event = Event.new(event_params)
      if @event.save
        redirect_to @event
      else
        render 'new'
      end
  end



  private

  def event_params
    params.require(:event).permit(:title, :subtitle, :body, :published, :day, :month, :year, :calendar_title, :calendar_body, :start, :end, :address_one, :address_two, :postcode, :city)
  end


end
