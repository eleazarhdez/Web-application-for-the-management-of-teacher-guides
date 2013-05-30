class ProfesorPerteneceAsignaturasController < ApplicationController
  # GET /profesor_pertenece_asignaturas
  # GET /profesor_pertenece_asignaturas.json
  def index
    @profesor_pertenece_asignaturas = ProfesorPerteneceAsignatura.all
    authorize!  :index, @profesor_pertenece_asignatura

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profesor_pertenece_asignaturas }
    end
  end

  # GET /profesor_pertenece_asignaturas/1
  # GET /profesor_pertenece_asignaturas/1.json
  def show
    @profesor_pertenece_asignatura = ProfesorPerteneceAsignatura.find(params[:id])
    authorize!  :show, @profesor_pertenece_asignatura
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profesor_pertenece_asignatura }
    end
  end

  # GET /profesor_pertenece_asignaturas/new
  # GET /profesor_pertenece_asignaturas/new.json
  def new
    @profesor_pertenece_asignatura = ProfesorPerteneceAsignatura.new
    authorize!  :new, @profesor_pertenece_asignatura
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profesor_pertenece_asignatura }
    end
  end

  # GET /profesor_pertenece_asignaturas/1/edit
  def edit
    @profesor_pertenece_asignatura = ProfesorPerteneceAsignatura.find(params[:id])
    authorize!  :edit, @profesor_pertenece_asignatura
  end

  # POST /profesor_pertenece_asignaturas
  # POST /profesor_pertenece_asignaturas.json
  def create
    @profesor_pertenece_asignatura = ProfesorPerteneceAsignatura.new(params[:profesor_pertenece_asignatura])
    authorize!  :create, @profesor_pertenece_asignatura
 puts params.inspect + "AVISOOOOO++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    respond_to do |format|
      if @profesor_pertenece_asignatura.save
        format.html { redirect_to @profesor_pertenece_asignatura, notice: 'Profesor pertenece asignatura was successfully created.' }
        format.json { render json: @profesor_pertenece_asignatura, status: :created, location: @profesor_pertenece_asignatura }
      else
        format.html { render action: "new" }
        format.json { render json: @profesor_pertenece_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profesor_pertenece_asignaturas/1
  # PUT /profesor_pertenece_asignaturas/1.json
  def update
    @profesor_pertenece_asignatura = ProfesorPerteneceAsignatura.find(params[:id])
    authorize!  :update, @profesor_pertenece_asignatura

    respond_to do |format|
      if @profesor_pertenece_asignatura.update_attributes(params[:profesor_pertenece_asignatura])
        format.html { redirect_to @profesor_pertenece_asignatura, notice: 'Profesor pertenece asignatura was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profesor_pertenece_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profesor_pertenece_asignaturas/1
  # DELETE /profesor_pertenece_asignaturas/1.json
  def destroy
    @profesor_pertenece_asignatura = ProfesorPerteneceAsignatura.find(params[:id])
    @profesor_pertenece_asignatura.destroy

    authorize!  :destroy, @profesor_pertenece_asignatura

    respond_to do |format|
      format.html { redirect_to profesor_pertenece_asignaturas_url }
      format.json { head :no_content }
    end
  end
end
