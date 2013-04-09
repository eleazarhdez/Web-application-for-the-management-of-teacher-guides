class EvaluationPerteneceAsignaturasController < ApplicationController
  # GET /evaluation_pertenece_asignaturas
  # GET /evaluation_pertenece_asignaturas.json
  def index
    @evaluation_pertenece_asignaturas = EvaluationPerteneceAsignatura.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evaluation_pertenece_asignaturas }
    end
  end

  # GET /evaluation_pertenece_asignaturas/1
  # GET /evaluation_pertenece_asignaturas/1.json
  def show
    @evaluation_pertenece_asignatura = EvaluationPerteneceAsignatura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evaluation_pertenece_asignatura }
    end
  end

  # GET /evaluation_pertenece_asignaturas/new
  # GET /evaluation_pertenece_asignaturas/new.json
  def new
    @evaluation_pertenece_asignatura = EvaluationPerteneceAsignatura.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluation_pertenece_asignatura }
    end
  end

  # GET /evaluation_pertenece_asignaturas/1/edit
  def edit
    @evaluation_pertenece_asignatura = EvaluationPerteneceAsignatura.find(params[:id])
  end

  # POST /evaluation_pertenece_asignaturas
  # POST /evaluation_pertenece_asignaturas.json
  def create
    @evaluation_pertenece_asignatura = EvaluationPerteneceAsignatura.new(params[:evaluation_pertenece_asignatura])

    respond_to do |format|
      if @evaluation_pertenece_asignatura.save
        format.html { redirect_to @evaluation_pertenece_asignatura, notice: 'Evaluation pertenece asignatura was successfully created.' }
        format.json { render json: @evaluation_pertenece_asignatura, status: :created, location: @evaluation_pertenece_asignatura }
      else
        format.html { render action: "new" }
        format.json { render json: @evaluation_pertenece_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evaluation_pertenece_asignaturas/1
  # PUT /evaluation_pertenece_asignaturas/1.json
  def update
    @evaluation_pertenece_asignatura = EvaluationPerteneceAsignatura.find(params[:id])

    respond_to do |format|
      if @evaluation_pertenece_asignatura.update_attributes(params[:evaluation_pertenece_asignatura])
        format.html { redirect_to @evaluation_pertenece_asignatura, notice: 'Evaluation pertenece asignatura was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evaluation_pertenece_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_pertenece_asignaturas/1
  # DELETE /evaluation_pertenece_asignaturas/1.json
  def destroy
    @evaluation_pertenece_asignatura = EvaluationPerteneceAsignatura.find(params[:id])
    @evaluation_pertenece_asignatura.destroy

    respond_to do |format|
      format.html { redirect_to evaluation_pertenece_asignaturas_url }
      format.json { head :no_content }
    end
  end
end
