class AsignaturasController < ApplicationController
  # GET /asignaturas
  # GET /asignaturas.json
  def index
    @asignaturas = Asignatura.all

    @extra_attributes = session[:cas_extra_attributes]
    @identifier = @extra_attributes["id"]
    @current_user = Profesore.find(@identifier)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @asignaturas }
    end
  end

=begin
  def current_user
    @current_user = session[:cas_user]
    @extra_attributes = session[:cas_extra_attributes]
    @current_user = @extra_attributes["roles"]
  end
  def current_rol
    @extra_attributes = session[:cas_extra_attributes]
    @current_rol = @extra_attributes["roles"]
  end
=end

  # GET /asignaturas/1
  # GET /asignaturas/1.json
  def show
    @asignatura = Asignatura.find(params[:id])
    authorize!  :show, @asignatura

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @asignatura }
    end
  end

  # GET /asignaturas/new
  # GET /asignaturas/new.json
  def new
    @asignatura = Asignatura.new
    #@evaluation = @asignatura.evaluations.create(:evaluation_date => Time.now)
    #1.times{@asignatura.evaluations.build}
   # 1.times{@asignatura.pruebas.build}
    #@evaluation = @asignatura.evaluations.build
    @prueba = @asignatura.pruebas.build

    authorize!  :new, @asignatura
    authorize!  :new, @prueba

    puts "PROBANDO= " + @prueba.inspect
    puts "PROBANDO= " + @asignatura.class.instance_methods.inspect

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @asignatura }
    end
  end

  # GET /asignaturas/1/edit
  def edit
    puts "----------------------------------------------------------------------------PASAAA"

    @asignatura = Asignatura.find(params[:id])
    @prueba = Prueba.find( params[:id])

    authorize!  :edit, @asignatura
    authorize!  :edit, @prueba

   # @prueba =@asignatura.pruebas.where("asignatura_id = ?", params[:id])

    #SELECT "pruebas".* FROM "pruebas" INNER JOIN "competency_pertenece_pruebas" ON "pruebas"."id" = "competency_pertenece_pruebas"."competency_id" WHERE "competency_pertenece_pruebas"."asignatura_id" =
    #puts "ESTE ES EL ID: " + @asignatura.evaluations.build(params[:id])
    #@evaluation = @asignatura.evaluations.find(params[:id], params[:tipooprueba])  #así debería de ser

    #@evaluation = @asignatura.evaluations.build
    puts "Esto es:" + Asignatura.find(params[:id]).inspect
   # @evaluation = Evaluation.find(params[:asignatura_id])
    #@evaluation = @asignatura.evaluations.find(params[:asignatura_id])
    puts "ESTE ES EL ID: " + @asignatura.evaluations.inspect

  end

  # POST /asignaturas
  # POST /asignaturas.json
  def create

    @asignatura = Asignatura.new(params[:asignatura])
    authorize!  :create, @asignatura
   # @evaluation = @asignatura.evaluations.build(params[:evaluation])

    respond_to do |format|
      if @asignatura.save
        format.html { redirect_to @asignatura, notice: 'Asignatura was successfully created.' }
        format.json { render json: @asignatura, status: :created, location: @asignatura }
      else
        format.html { render action: "new" }
        format.json { render json: @asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /asignaturas/1
  # PUT /asignaturas/1.json
  def update
    @asignatura = Asignatura.find(params[:id])
   # @evaluation = @asignatura.evaluations.find(params[:id]) #falla pq inserta un id único y no un par de claves
    puts "Pasando por el update: " + @asignatura.evaluations.inspect

    authorize!  :update, @asignatura

    respond_to do |format|
      if @asignatura.update_attributes(params[:asignatura])
        format.html { redirect_to @asignatura, notice: 'Asignatura was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignaturas/1
  # DELETE /asignaturas/1.json
  def destroy
    @asignatura = Asignatura.find(params[:id])
    @asignatura.destroy

    authorize!  :destroy, @asignatura

    respond_to do |format|
      format.html { redirect_to asignaturas_url }
      format.json { head :no_content }
    end
  end
end
