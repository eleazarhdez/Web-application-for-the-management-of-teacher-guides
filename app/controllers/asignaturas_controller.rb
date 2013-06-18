class AsignaturasController < ApplicationController
  # GET /asignaturas
  # GET /asignaturas.json
  def index
    @asignaturas = Asignatura.all
    @profesor_pertenece_asignaturas = ProfesorPerteneceAsignatura.all
    authorize! :index, @asignaturas

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @asignaturas }
    end
  end

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

    authorize!  :edit, Asignatura


   # @prueba =@asignatura.pruebas.where("asignatura_id = ?", params[:id])

    #SELECT "pruebas".* FROM "pruebas" INNER JOIN "competency_pertenece_pruebas" ON "pruebas"."id" = "competency_pertenece_pruebas"."competency_id" WHERE "competency_pertenece_pruebas"."asignatura_id" =
    #puts "ESTE ES EL ID: " + @asignatura.evaluations.build(params[:id])
    #@evaluation = @asignatura.evaluations.find(params[:id], params[:tipooprueba])  #así debería de ser

    #@evaluation = @asignatura.evaluations.build
    puts "Esto es:" + Asignatura.find(params[:id]).inspect
    puts "Esto es:" + @asignatura.profesor_tokens.to_s


  end

  # POST /asignaturas
  # POST /asignaturas.json
  def create

    @asignatura = Asignatura.new(params[:asignatura])
    authorize!  :create, @asignatura
   # @evaluation = @asignatura.evaluations.build(params[:evaluation])

    respond_to do |format|
      if @asignatura.save
        format.html { redirect_to @asignatura, notice: 'Se ha creado la asignatura ' + @asignatura.nombre + ' correctamente.' }
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
    @prueba = Prueba.find( params[:id])
   # @evaluation = @asignatura.evaluations.find(params[:id]) #falla pq inserta un id único y no un par de claves
    puts "Pasando por el update: " + @asignatura.evaluations.inspect

    authorize!  :update, @asignatura

    respond_to do |format|
      if @asignatura.update_attributes(params[:asignatura])
        format.html { redirect_to @asignatura, notice: 'La asignatura ' + @asignatura.nombre + ' fue actualizada correctamente.' }
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
