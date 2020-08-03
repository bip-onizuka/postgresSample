class ForherokusController < ApplicationController
  before_action :set_forheroku, only: [:show, :edit, :update, :destroy]

  # GET /forherokus
  # GET /forherokus.json
  def index
    @forherokus = Forheroku.all
  end

  # GET /forherokus/1
  # GET /forherokus/1.json
  def show
  end

  # GET /forherokus/new
  def new
    @forheroku = Forheroku.new
  end

  # GET /forherokus/1/edit
  def edit
  end

  # POST /forherokus
  # POST /forherokus.json
  def create
    @forheroku = Forheroku.new(forheroku_params)

    respond_to do |format|
      if @forheroku.save
        format.html { redirect_to @forheroku, notice: 'Forheroku was successfully created.' }
        format.json { render :show, status: :created, location: @forheroku }
      else
        format.html { render :new }
        format.json { render json: @forheroku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forherokus/1
  # PATCH/PUT /forherokus/1.json
  def update
    respond_to do |format|
      if @forheroku.update(forheroku_params)
        format.html { redirect_to @forheroku, notice: 'Forheroku was successfully updated.' }
        format.json { render :show, status: :ok, location: @forheroku }
      else
        format.html { render :edit }
        format.json { render json: @forheroku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forherokus/1
  # DELETE /forherokus/1.json
  def destroy
    @forheroku.destroy
    respond_to do |format|
      format.html { redirect_to forherokus_url, notice: 'Forheroku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forheroku
      @forheroku = Forheroku.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def forheroku_params
      params.require(:forheroku).permit(:textitem__c)
    end
end
