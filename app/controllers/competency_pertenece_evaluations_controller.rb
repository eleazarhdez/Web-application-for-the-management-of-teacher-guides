class CompetencyPerteneceEvaluationsController < ApplicationController
  # GET /competency_pertenece_evaluations
  # GET /competency_pertenece_evaluations.json
  def index
    @competency_pertenece_evaluations = CompetencyPerteneceEvaluation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @competency_pertenece_evaluations }
    end
  end

  # GET /competency_pertenece_evaluations/1
  # GET /competency_pertenece_evaluations/1.json
  def show
    @competency_pertenece_evaluation = CompetencyPerteneceEvaluation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @competency_pertenece_evaluation }
    end
  end

  # GET /competency_pertenece_evaluations/new
  # GET /competency_pertenece_evaluations/new.json
  def new
    @competency_pertenece_evaluation = CompetencyPerteneceEvaluation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @competency_pertenece_evaluation }
    end
  end

  # GET /competency_pertenece_evaluations/1/edit
  def edit
    @competency_pertenece_evaluation = CompetencyPerteneceEvaluation.find(params[:id])
  end

  # POST /competency_pertenece_evaluations
  # POST /competency_pertenece_evaluations.json
  def create
    @competency_pertenece_evaluation = CompetencyPerteneceEvaluation.new(params[:competency_pertenece_evaluation])

    respond_to do |format|
      if @competency_pertenece_evaluation.save
        format.html { redirect_to @competency_pertenece_evaluation, notice: 'Competency pertenece evaluation was successfully created.' }
        format.json { render json: @competency_pertenece_evaluation, status: :created, location: @competency_pertenece_evaluation }
      else
        format.html { render action: "new" }
        format.json { render json: @competency_pertenece_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /competency_pertenece_evaluations/1
  # PUT /competency_pertenece_evaluations/1.json
  def update
    @competency_pertenece_evaluation = CompetencyPerteneceEvaluation.find(params[:id])

    respond_to do |format|
      if @competency_pertenece_evaluation.update_attributes(params[:competency_pertenece_evaluation])
        format.html { redirect_to @competency_pertenece_evaluation, notice: 'Competency pertenece evaluation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @competency_pertenece_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competency_pertenece_evaluations/1
  # DELETE /competency_pertenece_evaluations/1.json
  def destroy
    @competency_pertenece_evaluation = CompetencyPerteneceEvaluation.find(params[:id])
    @competency_pertenece_evaluation.destroy

    respond_to do |format|
      format.html { redirect_to competency_pertenece_evaluations_url }
      format.json { head :no_content }
    end
  end
end
