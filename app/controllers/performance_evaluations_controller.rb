class PerformanceEvaluationsController < ApplicationController
  before_action :set_performance_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /performance_evaluations
  # GET /performance_evaluations.json
  def index
    @performance_evaluations = PerformanceEvaluation.all
  end

  # GET /performance_evaluations/1
  # GET /performance_evaluations/1.json
  def show
  end

  # GET /performance_evaluations/new
  def new
    #cambiar el find por el params[:employee_id]
    #@employe = Employee.find(1)
    #@performance_evaluation = @employe.performance_evaluation.build
    @performance_evaluation = PerformanceEvaluation.new
    @commitment = @performance_evaluation.performance_commitments.build
  #@commitment.employee = @employee
  end

  # GET /performance_evaluations/1/edit
  def edit
  end

  # POST /performance_evaluations
  # POST /performance_evaluations.json
  def create
    @employee = Employee.find(1)
    @performance_evaluation = @employee.performance_evaluations.build(performance_evaluation_params)
    #@performance_evaluation = PerformanceEvaluation.new(performance_evaluation_params)

    respond_to do |format|
      if @performance_evaluation.save
        format.html { redirect_to @performance_evaluation, notice: 'Performance evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @performance_evaluation }
      else
        format.html { render :new }
        format.json { render json: @performance_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performance_evaluations/1
  # PATCH/PUT /performance_evaluations/1.json
  def update
    respond_to do |format|
      if @performance_evaluation.update(performance_evaluation_params)
        format.html { redirect_to @performance_evaluation, notice: 'Performance evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @performance_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @performance_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performance_evaluations/1
  # DELETE /performance_evaluations/1.json
  def destroy
    @performance_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to performance_evaluations_url, notice: 'Performance evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performance_evaluation
      @performance_evaluation = PerformanceEvaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def performance_evaluation_params
      params.require(:performance_evaluation).permit(:title, :due_date,
        :performance_commitments_attributes => [:commitment])
    end
end
