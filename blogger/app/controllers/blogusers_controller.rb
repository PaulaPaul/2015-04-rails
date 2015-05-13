class BlogusersController < ApplicationController
  before_action :set_bloguser, only: [:show, :edit, :update, :destroy]

  # GET /blogusers
  # GET /blogusers.json
  def index
    @blogusers = Bloguser.all
  end

  # GET /blogusers/1
  # GET /blogusers/1.json
  def show
  end

  # GET /blogusers/new
  def new
    @bloguser = Bloguser.new
  end

  # GET /blogusers/1/edit
  def edit
  end

  # POST /blogusers
  # POST /blogusers.json
  def create
    @bloguser = Bloguser.new(bloguser_params)

    respond_to do |format|
      if @bloguser.save
        format.html { redirect_to @bloguser, notice: 'Bloguser was successfully created.' }
        format.json { render :show, status: :created, location: @bloguser }
      else
        format.html { render :new }
        format.json { render json: @bloguser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogusers/1
  # PATCH/PUT /blogusers/1.json
  def update
    respond_to do |format|
      if @bloguser.update(bloguser_params)
        format.html { redirect_to @bloguser, notice: 'Bloguser was successfully updated.' }
        format.json { render :show, status: :ok, location: @bloguser }
      else
        format.html { render :edit }
        format.json { render json: @bloguser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogusers/1
  # DELETE /blogusers/1.json
  def destroy
    @bloguser.destroy
    respond_to do |format|
      format.html { redirect_to blogusers_url, notice: 'Bloguser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bloguser
      @bloguser = Bloguser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bloguser_params
      params.require(:bloguser).permit(:name)
    end
end
