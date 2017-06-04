class ProblemsController < ApplicationController
  before_action :set_problem, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :authorize_admin, only: [:new, :edit, :update, :destroy]
  # GET /section/id/problems
  # GET /problems.json
  def index
    @section = Section.find(params[:section_id])
    @problems = @section.problems
  end

  # GET section/1/problems/1
  # GET /problems/1.json
  def show
  end

  # GET section/1/problems/new
  def new
    @section = Section.find(params[:section_id])
    @problem = @section.problems.build
  end

  # GET section/1/problems/1/edit
  def edit
    @section = Section.find(params[:section_id])
    @problem = @section.problems.find(params[:id])
  end

  # POST section/id/problems
  # POST /problems.json
  def create
    @section = Section.find(params[:section_id])
    @problem = @section.problems.build(problem_params)
    respond_to do |format|
      if @problem.save
        format.html { redirect_to @section, notice: 'Problem was successfully created.' }
        format.json { render :show, status: :created, location: @section }
      else
        format.html { render :new }
        format.json { render json: @problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /problems/1
  # PATCH/PUT /problems/1.json
  def update
    respond_to do |format|
      if @problem.update(problem_params)
        format.html { redirect_to sections_path, notice: 'Problem was successfully updated.' }
        format.json { render :show, status: :ok, location: sections_path }
      else
        format.html { render :edit }
        format.json { render json: @problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /problems/1
  # DELETE /problems/1.json
  def destroy
    @problem.destroy
    respond_to do |format|
      format.html { redirect_to section_problems_path, notice: 'Problem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_problem
      @problem = Problem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def problem_params
      params.require(:problem).permit(:name, :content, :sectionID)
    end
end
