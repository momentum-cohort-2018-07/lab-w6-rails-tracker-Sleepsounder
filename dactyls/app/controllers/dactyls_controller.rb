class DactylsController < ApplicationController
  before_action :set_dactyl, only: [:show, :update, :destroy]

  # GET /dactyls
  def index
    @dactyls = Dactyl.all

    render json: @dactyls
  end

  # GET /dactyls/1
  def show
    render json: @dactyl
  end

  # POST /dactyls
  def create
    byebug
    @dactyl = Dactyl.new(dactyl_params)

    if @dactyl.save
      render json: @dactyl, status: :created
    else
      render json: @dactyl.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dactyls/1
  def update
    if @dactyl.update(dactyl_params)
      render json: @dactyl
    else
      render json: @dactyl.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dactyls/1
  def destroy
    @dactyl.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dactyl
      @dactyl = Dactyl.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dactyl_params
      params.require(:dactyl).permit(:name, :size, :flight)
    end
end
