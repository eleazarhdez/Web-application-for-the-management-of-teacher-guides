class CompetencyPertenecePruebasController < ApplicationController
  # GET /competency_pertenece_pruebas
  # GET /competency_pertenece_pruebas.json
  def index
    @competency_pertenece_pruebas = CompetencyPertenecePrueba.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @competency_pertenece_pruebas }
    end
  end

  # GET /competency_pertenece_pruebas/1
  # GET /competency_pertenece_pruebas/1.json
  def show
    @competency_pertenece_prueba = CompetencyPertenecePrueba.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @competency_pertenece_prueba }
    end
  end

  # GET /competency_pertenece_pruebas/new
  # GET /competency_pertenece_pruebas/new.json
  def new
    @competency_pertenece_prueba = CompetencyPertenecePrueba.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @competency_pertenece_prueba }
    end
  end

  # GET /competency_pertenece_pruebas/1/edit
  def edit
    @competency_pertenece_prueba = CompetencyPertenecePrueba.find(params[:id])
  end

  # POST /competency_pertenece_pruebas
  # POST /competency_pertenece_pruebas.json
  def create
    @competency_pertenece_prueba = CompetencyPertenecePrueba.new(params[:competency_pertenece_prueba])

    respond_to do |format|
      if @competency_pertenece_prueba.save
        format.html { redirect_to @competency_pertenece_prueba, notice: 'Competency pertenece prueba was successfully created.' }
        format.json { render json: @competency_pertenece_prueba, status: :created, location: @competency_pertenece_prueba }
      else
        format.html { render action: "new" }
        format.json { render json: @competency_pertenece_prueba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /competency_pertenece_pruebas/1
  # PUT /competency_pertenece_pruebas/1.json
  def update
    @competency_pertenece_prueba = CompetencyPertenecePrueba.find(params[:id])

    respond_to do |format|
      if @competency_pertenece_prueba.update_attributes(params[:competency_pertenece_prueba])
        format.html { redirect_to @competency_pertenece_prueba, notice: 'Competency pertenece prueba was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @competency_pertenece_prueba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competency_pertenece_pruebas/1
  # DELETE /competency_pertenece_pruebas/1.json
  def destroy
    @competency_pertenece_prueba = CompetencyPertenecePrueba.find(params[:id])
    @competency_pertenece_prueba.destroy

    respond_to do |format|
      format.html { redirect_to competency_pertenece_pruebas_url }
      format.json { head :no_content }
    end
  end
end
