class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_favorite, only: [:show, :edit, :update, :destroy]

  # GET /favorites
  # GET /favorites.json
  def index
    if !current_user.favorites.blank?
      return current_user.favorites
    else
      render json: { errors: "No favorites for current user" }, status: :not_found
    end
  end

  # GET /favorites/1
  # GET /favorites/1.json
  def show
  end

  # POST /favorites
  # POST /favorites.json
  def create
    @favorite = Favorite.create(client_id: current_user.id, route_id: params[:route_id])

    respond_to do |format|
      if @favorite.save
        format.html { redirect_to @favorite, notice: 'Favorite was successfully created.' }
        format.json { render :show, status: :created, location: @favorite }
      else
        format.html { render :new }
        format.json { render json: @favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_to favorites_url, notice: 'Favorite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_params
      params[:favorite]
    end
end
