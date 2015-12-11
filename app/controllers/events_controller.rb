class EventsController < ApplicationController

    layout "admin_index", only: [:new, :create, :show, :edit, :update, :destroy, :admin]

    before_action :find_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all.order("created_at DESC")
    @covers = Cover.all.order("created_at DESC")
    @members = Member.all.order("created_at DESC")
    @homepages = Homepage.all.order("created_at DESC")
  end

  def admin
      @events = Event.all.order("created_at DESC")
  end

  def new
    @event = Event.new
  end

  def create
     @event = Event.new(event_params)
      if @event.save
        redirect_to @event
      else
        render 'new'
      end
  end



  def show
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event.destroy
    redirect_to events_admin_path
  end





  private


  def find_event
    @event = Event.find(params[:id])
  end


  def event_params
    params.require(:event).permit(:title, :subtitle, :body, :publish, :day, :month, :year, :calendar_title, :calendar_body, :start, :end, :address_one, :address_two, :postcode, :city, :week_day, :deadline, :map_url, :picture, :image)
  end


end
