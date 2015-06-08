class AssignmentGradesController < ApplicationController
  before_action :set_assignment_grade, only: [:show, :edit, :update, :destroy]

  # GET /assignment_grades
  # GET /assignment_grades.json
  def index
    @assignment_grades = AssignmentGrade.order(:course_id)
    respond_to do |format|
      format.html
      format.csv { render text: @assignment_grades.to_csv}
      format.xls
      format.json
    end    
  end
  
  def import
    AssignmentGrade.import(params[:file])
    redirect_to assignment_grades_path, notice: "Grades imported!" 
  end 

  # GET /assignment_grades/1
  # GET /assignment_grades/1.json
  def show
  end

  # GET /assignment_grades/new
  def new
    @assignment_grade = AssignmentGrade.new
  end

  # GET /assignment_grades/1/edit
  def edit
  end

  # POST /assignment_grades
  # POST /assignment_grades.json
  def create
    @assignment_grade = AssignmentGrade.new(assignment_grade_params)

    respond_to do |format|
      if @assignment_grade.save
        format.html { redirect_to @assignment_grade, notice: 'Assignment grade was successfully created.' }
        format.json { render :show, status: :created, location: @assignment_grade }
      else
        format.html { render :new }
        format.json { render json: @assignment_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignment_grades/1
  # PATCH/PUT /assignment_grades/1.json
  def update
    respond_to do |format|
      if @assignment_grade.update(assignment_grade_params)
        format.html { redirect_to @assignment_grade, notice: 'Assignment grade was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment_grade }
      else
        format.html { render :edit }
        format.json { render json: @assignment_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignment_grades/1
  # DELETE /assignment_grades/1.json
  def destroy
    @assignment_grade.destroy
    respond_to do |format|
      format.html { redirect_to assignment_grades_url, notice: 'Assignment grade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment_grade
      @assignment_grade = AssignmentGrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_grade_params
      params.require(:assignment_grade).permit(:assignment, :letter_grade, :percent_grade, :student_id, :course_id)
    end
end
