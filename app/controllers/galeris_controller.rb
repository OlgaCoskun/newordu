class GalerisController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_galeri, only: [:show, :edit, :update, :destroy]

  def index
    @galeris = Galeri.all
  end

  def show
  end

  def new
    @galeri = Galeri.new
  end

  def edit
  end

  def create
    @galeri = Galeri.new(galeri_params)
    if @galeri.save
      redirect_to @galeri, notice: 'Photo was successfully created.'
    else
      render :new
    end
  end

  def update
    if @galeri.update(galeri_params)
      redirect_to @galeri, notice: 'Photo was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @galeri.destroy
    redirect_to galeris_url, notice: 'Photo was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galeri
      @galeri = Galeri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galeri_params
      params.require(:galeri).permit(:title, :avatar)
    end
end

