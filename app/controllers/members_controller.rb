class MembersController < ApplicationController
  def index
    @terms = Term.all
  end

  def show
    @member = Member.find(params[:id])

  end


  def edit
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params[:member])
    if @member.save
      flash[:success] = "Member saved succesfully!"
      redirect_to @member
    else
      render 'new'
    end  

  end

  def update
    @member = Member.find(params[:id])

  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
  end

end
