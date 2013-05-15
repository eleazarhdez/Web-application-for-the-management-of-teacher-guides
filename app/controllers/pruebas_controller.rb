class PruebasController < ApplicationController
  # GET /pruebas
  # GET /pruebas.json
  def index
    @pruebas = Prueba.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pruebas }
    end
  end

  # GET /pruebas/1
  # GET /pruebas/1.json
  def show
    @prueba = Prueba.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prueba }
    end
  end

  # GET /pruebas/new
  # GET /pruebas/new.json
  def new
    @prueba = Prueba.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prueba }
    end
  end

  # GET /pruebas/1/edit
  def edit
    puts "ESTOY PASANDO POR EL EDITAR DE PRUEBAS"
    @prueba = Prueba.find(params[:id])
  end

  # POST /pruebas
  # POST /pruebas.json
  def create
    @prueba = Prueba.new(params[:prueba])

    respond_to do |format|
      if @prueba.save
        format.html { redirect_to @prueba, notice: 'Prueba was successfully created.' }
        format.json { render json: @prueba, status: :created, location: @prueba }
      else
        format.html { render action: "new" }
        format.json { render json: @prueba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pruebas/1
  # PUT /pruebas/1.json
  def update
    @prueba = Prueba.find(params[:id])

    respond_to do |format|
      if @prueba.update_attributes(params[:prueba])
        format.html { redirect_to @prueba, notice: 'Prueba was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prueba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pruebas/1
  # DELETE /pruebas/1.json
  def destroy
    @prueba = Prueba.find(params[:id])
    @prueba.destroy

    respond_to do |format|
      format.html { redirect_to pruebas_url }
      format.json { head :no_content }
    end
  end
end
