class WeetsController < ApplicationController
  before_action :set_weet, only: [:show, :edit, :update, :destroy]

  # GET /weets
  # GET /weets.json
  def index
    @weets = Weet.all
  end

  # GET /weets/1
  # GET /weets/1.json
  def show
  end

  # GET /weets/new
  def new
    @weet = Weet.new
  end

  # GET /weets/1/edit
  def edit
  end

  # POST /weets
  # POST /weets.json
  def create
    @weet = Weet.new(weet_params)

    respond_to do |format|
      if @weet.save
        format.html { redirect_to @weet, notice: 'Weet was successfully created.' }
        format.json { render :show, status: :created, location: @weet }
      else
        format.html { render :new }
        format.json { render json: @weet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weets/1
  # PATCH/PUT /weets/1.json
  def update
    respond_to do |format|
      if @weet.update(weet_params)
        format.html { redirect_to @weet, notice: 'Weet was successfully updated.' }
        format.json { render :show, status: :ok, location: @weet }
      else
        format.html { render :edit }
        format.json { render json: @weet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weets/1
  # DELETE /weets/1.json
  def destroy
    @weet.destroy
    respond_to do |format|
      format.html { redirect_to weets_url, notice: 'Weet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weet
      @weet = Weet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def weet_params
      params.require(:weet).permit(:weet)
    end
end
