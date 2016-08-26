class StopRequestsController < ApplicationController
  before_action :set_stop_request, only: [:show, :edit, :update, :destroy]

  # GET /stop_requests
  # GET /stop_requests.json
  def index
    @stop_requests = StopRequest.all
  end

  # GET /stop_requests/1
  # GET /stop_requests/1.json
  def show
  end

  # GET /stop_requests/new
  def new
    @stop_request = StopRequest.new
  end

  # GET /stop_requests/1/edit
  def edit
  end

  # POST /stop_requests
  # POST /stop_requests.json
  def create
    @stop_request = StopRequest.new(stop_request_params)

    respond_to do |format|
      if @stop_request.save
        format.html { redirect_to @stop_request, notice: 'Stop request was successfully created.' }
        format.json { render :show, status: :created, location: @stop_request }
      else
        format.html { render :new }
        format.json { render json: @stop_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stop_requests/1
  # PATCH/PUT /stop_requests/1.json
  def update
    respond_to do |format|
      if @stop_request.update(stop_request_params)
        format.html { redirect_to @stop_request, notice: 'Stop request was successfully updated.' }
        format.json { render :show, status: :ok, location: @stop_request }
      else
        format.html { render :edit }
        format.json { render json: @stop_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stop_requests/1
  # DELETE /stop_requests/1.json
  def destroy
    @stop_request.destroy
    respond_to do |format|
      format.html { redirect_to stop_requests_url, notice: 'Stop request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stop_request
      @stop_request = StopRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stop_request_params
      params[:stop_request]
    end
end
