# frozen_string_literal: true

class LosersController < ApplicationController
  before_action :set_loser, only: [:show, :edit, :update, :destroy]

  # GET /losers
  # GET /losers.json
  def index
    @losers = Loser.all
  end

  # GET /losers/1
  # GET /losers/1.json
  def show
  end

  # GET /losers/new
  def new
    @loser = Loser.new
  end

  # GET /losers/1/edit
  def edit
  end

  # POST /losers
  # POST /losers.json
  def create
    @loser = Loser.new(loser_params)

    respond_to do |format|
      if @loser.save
        format.html { redirect_to @loser, notice: "Loser was successfully created." }
        format.json { render :show, status: :created, location: @loser }
      else
        format.html { render :new }
        format.json { render json: @loser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /losers/1
  # PATCH/PUT /losers/1.json
  def update
    respond_to do |format|
      if @loser.update(loser_params)
        format.html { redirect_to @loser, notice: "Loser was successfully updated." }
        format.json { render :show, status: :ok, location: @loser }
      else
        format.html { render :edit }
        format.json { render json: @loser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /losers/1
  # DELETE /losers/1.json
  def destroy
    @loser.destroy
    respond_to do |format|
      format.html { redirect_to losers_url, notice: "Loser was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loser
      @loser = Loser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loser_params
      params.require(:loser).permit(:vorname, :nachname)
    end
end
