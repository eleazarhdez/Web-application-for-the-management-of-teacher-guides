class AsignaturasController < ApplicationController
  # GET /asignaturas
  # GET /asignaturas.json
  def index
    @asignaturas = Asignatura.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @asignaturas }
    end
  end

  # GET /asignaturas/1
  # GET /asignaturas/1.json
  def show
    @asignatura = Asignatura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @asignatura }
    end
  end

  # GET /asignaturas/new
  # GET /asignaturas/new.json
  def new
    @asignatura = Asignatura.new
   # @profesor_pertenece_asignatura = ProfesorPerteneceAsignatura.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @asignatura }
    end
  end

  # GET /asignaturas/1/edit
  def edit
    @asignatura = Asignatura.find(params[:id])
  # @profesor_pertenece_asignatura = ProfesorPerteneceAsignatura.find(params[:id])
  end

  # POST /asignaturas
  # POST /asignaturas.json
  def create
    @asignatura = Asignatura.new(params[:asignatura])
   # @profesor_pertenece_asignatura = ProfesorPerteneceAsignatura.new(params[:profesor_pertenece_asignatura])
    #ProfesorPerteneceAsignatura.rol = "profesor"
    # => ProfesorPerteneceAsisgnatura.codigo = 7777777

    respond_to do |format|
      if @asignatura.save
        format.html { redirect_to @asignatura, notice: 'Asignatura was successfully created.' }
        format.json { render json: @asignatura, status: :created, location: @asignatura }
      else
        format.html { render action: "new" }
        format.json { render json: @asignatura.errors, status: :unprocessable_entity }
      end
   #if @profesor_pertenece_asignatura.save
    #     puts params.inspect + "AVISOOOOO++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
     #   format.html { redirect_to @profesor_pertenece_asignatura, notice: 'Profesor pertenece asignatura was successfully created.' }
      #  format.json { render json: @profesor_pertenece_asignatura, status: :created, location: @profesor_pertenece_asignatura }
      #else
      #  format.html { render action: "new" }
       # format.json { render json: @profesor_pertenece_asignatura.errors, status: :unprocessable_entity }
      #end

    end
  end

  # PUT /asignaturas/1
  # PUT /asignaturas/1.json
  def update
    @asignatura = Asignatura.find(params[:id])

    respond_to do |format|
      if @asignatura.update_attributes(params[:asignatura])
        format.html { redirect_to @asignatura, notice: 'Asignatura was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @asignatura.errors, status: :unprocessable_entity }
      end
    end
    
   # @profesor_pertenece_asignatura = ProfesorPerteneceAsignatura.find(params[:id])
  #respond_to do |format|
   #   if @profesor_pertenece_asignatura.update_attributes(params[:profesor_pertenece_asignatura])
    #    format.html { redirect_to @profesor_pertenece_asignatura, notice: 'Profesor pertenece asignatura was successfully updated.' }
     #   format.json { head :no_content }
    #else
     #   format.html { render action: "edit" }
      #  format.json { render json: @profesor_pertenece_asignatura.errors, status: :unprocessable_entity }
      #end
    #end

  end

  # DELETE /asignaturas/1
  # DELETE /asignaturas/1.json
  def destroy
    @asignatura = Asignatura.find(params[:id])
    @asignatura.destroy

    respond_to do |format|
      format.html { redirect_to asignaturas_url }
      format.json { head :no_content }
    end
  end
end
