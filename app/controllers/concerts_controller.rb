class ConcertsController < ApplicationController
  before_action :set_band
  before_action :set_concert, only: %i[ show edit update destroy ]

  def index
    @concerts = @band.concerts
  end

  def show
  end

  def new
    @concert = @band.concerts.build
  end

  def edit
  end

  def create
    @concert = @band.concerts.build(concert_params)

    respond_to do |format|
      if @concert.save
        format.html { redirect_to @concert, notice: "Concert was successfully created." }
        format.json { render :show, status: :created, location: @concert }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @concert.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @concert.update(concert_params)
        format.html { redirect_to @concert, notice: "Concert was successfully updated." }
        format.json { render :show, status: :ok, location: @concert }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @concert.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @concert.destroy
    respond_to do |format|
      format.html { redirect_to concerts_url, notice: "Concert was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_concert
      @concert = Concert.find(params[:id])
    end

    def set_band
      @band = Band.find(params[:band_id])
    end

    def concert_params
      params.require(:concert).permit(:attendance, :duration, :date)
    end
end
