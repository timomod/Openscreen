class CoversController < ApplicationController

    layout "admin_index"

    before_action :find_cover, only: [:show, :edit, :update, :destroy]

  def index
    @covers = Cover.all.order("created_at DESC")
  end

  def admin
      @covers = Cover.all.order("created_at DESC")
    end

  def new
    @cover = Cover.new
  end

  def create
     @cover = Cover.new(cover_params)
      if @cover.save
        redirect_to @cover
      else
        render 'new'
      end
  end



  def show
  end

  def edit
  end

  def update
    if @cover.update(cover_params)
      redirect_to @cover
    else
      render 'edit'
    end
  end

  def destroy
    @cover.destroy
    redirect_to root_path
  end





  private


  def find_cover
    @cover = Cover.find(params[:id])
  end


  def cover_params
    params.require(:cover).permit(:title, :subtitle, :body, :publish, :day, :month, :year, :calendar_title, :calendar_body, :start, :end, :address_one, :address_two, :covercode, :city, :week_day, :deadline, :map_url, :image)
  end


end
