class CinemasController < ApplicationController
  #skip_before_action :verify_authenticity_token
  before_action :set_cinema, only: [:show, :update, :destroy]

  # GET /cinemas
  def index
    @cinemas = Cinema.all
    options = {:include => [:genre]}
    render json: CinemaSerializer.new(@cinemas, options).serializable_hash
    #render json: CinemaSerializer.new(@cinemas, options).serialized_json
    #render json: CinemaSerializer.new(@cinemas).serialized_json#.serializable_hash#.serialized_json#.serializable_hash #
    #render json: @cinemas
  end

  # GET /cinemas/1
  def show
    render json: @cinema
    #render json: CinemaSerializer.new(@cinemas) #.serialized_json
  end

  # POST /cinemas
  def create
    @cinema = Cinema.new(cinema_params)

    if @cinema.save
      render json: @cinema, status: :created, location: @cinema
    else
      render json: @cinema.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cinemas/1
  def update
    if @cinema.update(cinema_params)
      render json: @cinema
    else
      render json: @cinema.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cinemas/1
  def destroy
    @cinema.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cinema
    #@cinema = Cinema.find(params[:id])

    @cinema = CinemaSerializer.new(Cinema.find(params[:id]))
  end

  # Only allow a trusted parameter "white list" through.
  def cinema_params
    params.require(:cinema).permit(:title, :genre_id, :numberInStock, :dailyRentalRate)
  end
end
