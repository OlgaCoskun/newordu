class YonetimsController < ApplicationController
  load_and_authorize_resource

  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_yonetim, only: [:edit, :update, :show, :destroy]

  def index
    @yonetims = Yonetim.all.sort
  end

  def new
    @yonetim = Yonetim.new
  end

  def edit
  end

  def show
  end

  def create
    @yonetim = Yonetim.new(yonetim_params)
    @yonetim.user_id = current_user.id
    if @yonetim.save
      redirect_to @yonetim
    else
      render action: 'new'
    end
  end

  def update
    if @yonetim.update(yonetim_params)

      redirect_to @yonetim
    else
      render action: 'edit'
    end
  end

  def destroy
    @yonetim.destroy

    redirect_to yonetims_path
  end

  private
    def set_yonetim
      @yonetim = Yonetim.find(params[:id])
    end

    def yonetim_params
      params.require(:yonetim).permit(:ny, :title_y, :text_y, :nu, :title_u, :text_u, :user_id)
    end

end
