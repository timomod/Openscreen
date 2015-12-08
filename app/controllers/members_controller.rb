class MembersController < ApplicationController

  layout "admin_index"

  before_action :find_member, only: [:show, :edit, :update, :destroy]

  def admin
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
     @member = Member.new(member_params)
      if @member.save
        redirect_to @member
      else
        render 'new'
      end
  end



  def show
  end

  def edit
  end

  def update
    if @member.update(member_params)
      redirect_to @member
    else
      render 'edit'
    end
  end

  def destroy
    @member.destroy
    redirect_to root_path
  end





  private


  def find_member
    @member = Member.find(params[:id])
  end


  def member_params
    params.require(:member).permit(:title, :subtitle, :body, :published,)
  end


end