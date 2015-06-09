class WizmodelsController < ApplicationController
  before_action :set_wizmodel, only: [:show, :edit, :update, :destroy]

  # GET /wizmodels
  # GET /wizmodels.json
  def index
    @wizmodels = Wizmodel.all
  end

  # GET /wizmodels/1
  # GET /wizmodels/1.json
  def show
  end

  # GET /wizmodels/new
  def new
    @wizmodel = Wizmodel.new
    @action = "new"
    Wizard::Application.config.current_step = Wizard::Application.config.steps[0]
    Wizard::Application.config.current_index = 0
    session[:wizmodel_params].clear
  end

  # GET /wizmodels/1/edit
  def edit
  end

  # POST /wizmodels
  # POST /wizmodels.json
  def create
    @action = "create"
    session[:wizmodel_params].deep_merge!(params[:wizmodel]) if params[:wizmodel]
    @wizmodel = Wizmodel.new(session[:wizmodel_params])
     @current_step = Wizard::Application.config.current_step
     @current_index = Wizard::Application.config.current_index

    if @wizmodel.valid?
      if params[:back_button]
        @current_index = @current_index - 1
        @current_step = Wizard::Application.config.steps[@current_index]
        Wizard::Application.config.current_step = @current_step
        Wizard::Application.config.current_index = @current_index 
        render 'new'
      elsif @current_step == Wizard::Application.config.last_step
        @wizmodel.save if  @wizmodel.valid?
        @current_index = 0
        @current_step = Wizard::Application.config.steps[@current_index]
        flash[:notice] = "Wizmodel saved!"
        Wizard::Application.config.current_step = @current_step
        Wizard::Application.config.current_index = @current_index 
        redirect_to @wizmodel
      else
        @current_index = @current_index + 1
        @current_step = Wizard::Application.config.steps[@current_index]
        Wizard::Application.config.current_step = @current_step
        Wizard::Application.config.current_index = @current_index 
        render 'new'
      end
 
      
    end
    
#     respond_to do |format|
#       if @wizmodel.save
#         format.html { redirect_to @wizmodel, notice: 'Wizmodel was successfully created.' }
#         format.json { render :show, status: :created, location: @wizmodel }
#       else
#         format.html { render :new }
#         format.json { render json: @wizmodel.errors, status: :unprocessable_entity }
#       end
#     end
  end

  # PATCH/PUT /wizmodels/1
  # PATCH/PUT /wizmodels/1.json
  def update
    respond_to do |format|
      if @wizmodel.update(wizmodel_params)
        format.html { redirect_to @wizmodel, notice: 'Wizmodel was successfully updated.' }
        format.json { render :show, status: :ok, location: @wizmodel }
      else
        format.html { render :edit }
        format.json { render json: @wizmodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wizmodels/1
  # DELETE /wizmodels/1.json
  def destroy
    @wizmodel.destroy
    respond_to do |format|
      format.html { redirect_to wizmodels_url, notice: 'Wizmodel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wizmodel
      @wizmodel = Wizmodel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wizmodel_params
      params.require(:wizmodel).permit(:project_name, :description, :cheap_material, :expensive_material, :cheap_color, :expensive_color, :current_step)
    end
end
