class CommutesController < ApplicationController
  before_action :set_commute, only: [:show, :edit, :update, :destroy]

  # GET /commutes
  # GET /commutes.json
  def index
    @commutes = Commute.all
  end

  # GET /commutes/1
  # GET /commutes/1.json
  def show
  end

  # POST /commutes
  # POST /commutes.json
  def create
    @commute = Commute.new(commute_params)

    respond_to do |format|
      if @commute.save
        format.html { redirect_to @commute, notice: 'Commute was successfully created.' }
        format.json { render :show, status: :created, location: @commute }
      else
        format.html { render :new }
        format.json { render json: @commute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commutes/1
  # PATCH/PUT /commutes/1.json
  def update
    respond_to do |format|
      if @commute.update(commute_params)
        format.html { redirect_to @commute, notice: 'Commute was successfully updated.' }
        format.json { render :show, status: :ok, location: @commute }
      else
        format.html { render :edit }
        format.json { render json: @commute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commutes/1
  # DELETE /commutes/1.json
  def destroy
    @commute.destroy
    respond_to do |format|
      format.html { redirect_to commutes_url, notice: 'Commute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commute
      @commute = Commute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commute_params
      params[:commute]
    end
end
