class CompetenciesController < ApplicationController
  # GET /competencies
  # GET /competencies.json
  def index
    @competencies = Competency.where("name like ?", "%#{params[:q]}%")
    authorize! :index, @competency

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @competencies.map(&:attributes) }
    end
  end

  # GET /competencies/1
  # GET /competencies/1.json
  def show
    @competency = Competency.find(params[:id])
    authorize! :show, @competency

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @competency }
    end
  end

  # GET /competencies/new
  # GET /competencies/new.json
  def new
    @competency = Competency.new
    authorize! :new, @competency

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @competency }
    end
  end

  # GET /competencies/1/edit
  def edit
    @competency = Competency.find(params[:id])
    authorize! :edit, @competency
  end

  # POST /competencies
  # POST /competencies.json
  def create
    @competency = Competency.new(params[:competency])
    authorize! :create, @competency

    respond_to do |format|
      if @competency.save
        format.html { redirect_to @competency, notice: 'Competency was successfully created.' }
        format.json { render json: @competency, status: :created, location: @competency }
      else
        format.html { render action: "new" }
        format.json { render json: @competency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /competencies/1
  # PUT /competencies/1.json
  def update
    @competency = Competency.find(params[:id])
    authorize! :update, @competency

    respond_to do |format|
      if @competency.update_attributes(params[:competency])
        format.html { redirect_to @competency, notice: 'Competency was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @competency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competencies/1
  # DELETE /competencies/1.json
  def destroy
    @competency = Competency.find(params[:id])
    @competency.destroy
    authorize! :destroy, @competency

    respond_to do |format|
      format.html { redirect_to competencies_url }
      format.json { head :no_content }
    end
  end
end
