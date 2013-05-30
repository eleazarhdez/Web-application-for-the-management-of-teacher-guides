class CompetencyPerteneceAsignaturasController < ApplicationController
  # GET /competency_pertenece_asignaturas
  # GET /competency_pertenece_asignaturas.json
  def index
    @competency_pertenece_asignaturas = CompetencyPerteneceAsignatura.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @competency_pertenece_asignaturas }
    end
  end

  # GET /competency_pertenece_asignaturas/1
  # GET /competency_pertenece_asignaturas/1.json
  def show
    @competency_pertenece_asignatura = CompetencyPerteneceAsignatura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @competency_pertenece_asignatura }
    end
  end

  # GET /competency_pertenece_asignaturas/new
  # GET /competency_pertenece_asignaturas/new.json
  def new
    @competency_pertenece_asignatura = CompetencyPerteneceAsignatura.new
    authorize! :new, @competency_pertenece_asignatura

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @competency_pertenece_asignatura }
    end
  end

  # GET /competency_pertenece_asignaturas/1/edit
  def edit
    @competency_pertenece_asignatura = CompetencyPerteneceAsignatura.find(params[:id])
    authorize! :edit, @competency_pertenece_asignatura

  end

  # POST /competency_pertenece_asignaturas
  # POST /competency_pertenece_asignaturas.json
  def create
    @competency_pertenece_asignatura = CompetencyPerteneceAsignatura.new(params[:competency_pertenece_asignatura])
    authorize! :create, @competency_pertenece_asignatura

    respond_to do |format|
      if @competency_pertenece_asignatura.save
        format.html { redirect_to @competency_pertenece_asignatura, notice: 'Competency pertenece asignatura was successfully created.' }
        format.json { render json: @competency_pertenece_asignatura, status: :created, location: @competency_pertenece_asignatura }
      else
        format.html { render action: "new" }
        format.json { render json: @competency_pertenece_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /competency_pertenece_asignaturas/1
  # PUT /competency_pertenece_asignaturas/1.json
  def update
    @competency_pertenece_asignatura = CompetencyPerteneceAsignatura.find(params[:id])
    authorize! :update, @competency_pertenece_asignatura

    respond_to do |format|
      if @competency_pertenece_asignatura.update_attributes(params[:competency_pertenece_asignatura])
        format.html { redirect_to @competency_pertenece_asignatura, notice: 'Competency pertenece asignatura was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @competency_pertenece_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competency_pertenece_asignaturas/1
  # DELETE /competency_pertenece_asignaturas/1.json
  def destroy
    @competency_pertenece_asignatura = CompetencyPerteneceAsignatura.find(params[:id])
    @competency_pertenece_asignatura.destroy
    authorize! :destroy, @competency_pertenece_asignatura

    respond_to do |format|
      format.html { redirect_to competency_pertenece_asignaturas_url }
      format.json { head :no_content }
    end
  end
end
