class MarblesController < ApplicationController
  before_action :authenticate_person!
  before_action :set_marble, only: [:show, :edit, :update, :destroy]

  # GET /marbles
  # GET /marbles.json
  def index
    @marbles = Marble.all
  end

  # GET /marbles/1
  # GET /marbles/1.json
  def show
  end

  # GET /marbles/new
  def new
    @marble = Marble.new
    @people = Person.all
  end

  # GET /marbles/1/edit
  def edit
    @people = Person.all
  end

  # POST /marbles
  # POST /marbles.json
  def create
    @marble = Marble.new(marble_params)

    respond_to do |format|
      if @marble.save
        format.html { redirect_to @marble, notice: 'Marble was successfully created.' }
        format.json { render :show, status: :created, location: @marble }
      else
        format.html { render :new }
        format.json { render json: @marble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marbles/1
  # PATCH/PUT /marbles/1.json
  def update
    respond_to do |format|
      if @marble.update(marble_params)
        format.html { redirect_to @marble, notice: 'Marble was successfully updated.' }
        format.json { render :show, status: :ok, location: @marble }
      else
        format.html { render :edit }
        format.json { render json: @marble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marbles/1
  # DELETE /marbles/1.json
  def destroy
    @marble.destroy
    respond_to do |format|
      format.html { redirect_to marbles_url, notice: 'Marble was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marble
      @marble = Marble.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marble_params
      params.require(:marble).permit(:name, :color, :person_id)
    end
end
