class DuyurularsController < ApplicationController

  load_and_authorize_resource

  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_duyurular, only: [:edit, :update, :show, :destroy]

  def index
    @duyurulars = Duyurular.all.reverse
  end

  def new
    @duyurular = Duyurular.new
  end

  def edit
  end

  def show
  end

  def create
    @duyurular = Duyurular.new(duyurular_params)
    @duyurular.user_id = current_user.id
    if @duyurular.save
      redirect_to @duyurular
    else
      render action: 'new'
    end
  end

  def update
    if @duyurular.update(duyurular_params)

      redirect_to @duyurular
    else
      render action: 'edit'
    end
  end

  def destroy
    @duyurular.destroy

    redirect_to duyurulars_path
  end

  private
    def set_duyurular
      @duyurular = Duyurular.find(params[:id])
    end

    def duyurular_params
      params.require(:duyurular).permit(:title, :text, :user_id)
    end

end
