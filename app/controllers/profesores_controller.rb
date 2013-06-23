class ProfesoresController < ApplicationController



  # GET /profesores
  # GET /profesores.json
  def index
    @profesore = Profesore.where("name like ?", "%#{params[:q]}%")
    authorize! :index, Profesore



    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profesore.map(&:attributes) }
    end
  end

  # GET /profesores/1
  # GET /profesores/1.json
  def show
    @profesore = Profesore.find(params[:id])



    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profesore }
    end
  end

  # GET /profesores/new
  # GET /profesores/new.json
  def new
    @profesore = Profesore.new
    authorize! :new, @profesore

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profesore }
    end
  end

  # GET /profesores/1/edit
  def edit
    @profesore = Profesore.find(params[:id])
    authorize! :edit, @profesore


  end

  # POST /profesores
  # POST /profesores.json
  def create
    @profesore = Profesore.new(params[:profesore])
    authorize! :create, @profesore



    respond_to do |format|
      if @profesore.save
        format.html { redirect_to @profesore, notice: 'El usuario ' + @profesore.name + ' fue creado correctamente.' }
        format.json { render json: @profesore, status: :created, location: @profesore }
      else
        format.html { render action: "new" }
        format.json { render json: @profesore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profesores/1
  # PUT /profesores/1.json
  def update
    @profesore = Profesore.find(params[:id])
    authorize! :update, @profesore


    respond_to do |format|
      if @profesore.update_attributes(params[:profesore])
        format.html { redirect_to @profesore, notice: 'El usuario ' + @profesore.name + ' fue actualizado correctamente.'  }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profesore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profesores/1
  # DELETE /profesores/1.json
  def destroy
    @profesore = Profesore.find(params[:id])
    @profesore.destroy
    authorize! :destroy, @profesore

    respond_to do |format|
      format.html { redirect_to profesores_url }
      format.json { head :no_content }
    end
  end
end
