class AsignaturasController < ApplicationController
  # GET /asignaturas
  # GET /asignaturas.json
  def index
    session[:asignatura_step] = session[:asignatura_params] = nil #nos asegura que no se mezclan las sesiones
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
    puts "-------EntrANDO POR METODO NEW------------------------------------"
    session[:asignatura_params] ||= {}
    @asignatura = Asignatura.new(session[:asignatura_params])
    puts @asignatura.inspect + "ESTO ES LO QUE TIENE ASIGNATURA"
    #@evaluation = @asignatura.evaluations.build(params[:evaluation])
    #@asignatura.evaluations.build = Evaluation.new
    #1.times {@asignatura.evaluations.build}
    @asignatura.current_step = session[:asignatura_step]  
    puts "-------SALIENDO POR METODO NEW------------------------------------"
    #@evaluation = Evaluation.new
    puts @asignatura.class.instance_methods.inspect + "ESTO ES LO QUE TIENE LA CLASE ASIGNATURA"
    puts @asignatura.inspect + "ESTO ES LO QUE TIENE ASIGNATURA"
    puts @asignatura.evaluations.inspect + "ESTO ES LO QUE QUIERO SABER"
    puts @evaluation.class.instance_methods.inspect + "EEEEEEEEEEEOOOOOOOOOOOOOOEEEEEEEEEEOOOOOO"

     
    #respond_to do |format|
     # format.html # new.html.erb
      #format.json { render json: @asignatura }
    #end
  end

  # GET /asignaturas/1/edit
  def edit
    puts "-------EntrANDO POR METODO EDIT------------------------------------"
    session[:asignatura_params] ||= {}
    @asignatura = Asignatura.find(params[:id])
    @asignatura.current_step = session[:asignatura_step]
    puts session.inspect + "------------------------------------------------------------"
    puts "-------SALIENDO POR METODO edit------------------------------------"
  end

  # POST /asignaturas
  # POST /asignaturas.json
  def create
    session[:asignatura_params].deep_merge!(params[:asignatura]) if params[:asignatura]
    @asignatura = Asignatura.new(session[:asignatura_params])
    @evaluation = @asignatura.evaluations.build(params[:evaluation])
    #session[:asignatura_params].deep_merge!(params[:evaluation]) if params[:evaluation]
    @asignatura.current_step = session[:asignatura_step]
    
    if params[:back_button]  
      @asignatura.previous_step  
    elsif @asignatura.last_step?  
      @asignatura.save  
    else  
      puts "-------ESTOY PASANDO POR EL PASO SIGUIENTE------------------------------------"
      puts session.inspect + "------------------------------------------------------------"
      @asignatura.next_step  
    end  
    if @asignatura.current_step == "evaluacion_step"
      @evaluation.save
    end  
    session[:asignatura_step] = @asignatura.current_step
    
    if @asignatura.new_record? 
      puts "-------ESTOY PASANDO POR EL render new------------------------------------" 
      render 'new'  
    else  
      session[:asignatura_step] = session[:asignatura_params] = nil 
      flash[:notice] = "Asignatura saved."  
      redirect_to @asignatura 
    end  
    #ESTA PARTE SE HA COMENTADO, AHORA TENEMOS EL FORMULARIO POR PASOS, SI FALLA VOLVER A ESTO
    #respond_to do |format|
      #if @asignatura.save
        #format.html { redirect_to @asignatura, notice: 'Asignatura was successfully created.' }
        #format.json { render json: @asignatura, status: :created, location: @asignatura }
      #else
        #format.html { render action: "new" }
        #format.json { render json: @asignatura.errors, status: :unprocessable_entity }
      #end
    #end
  end

  # PUT /asignaturas/1
  # PUT /asignaturas/1.json
  def update
    flag = 0
    session[:asignatura_params].deep_merge!(params[:asignatura]) if params[:asignatura]
    @asignatura = Asignatura.find(params[:id])
    @asignatura.current_step = session[:asignatura_step]

    puts session.inspect + "------------------------------------------------------------"
    if params[:back_button]  
      @asignatura.previous_step  
    elsif @asignatura.last_step?  
      puts "-------ENTRO POR LO DEL ULTIMO PASO------------------------------------"
      flag = 1
      @asignatura.update_attributes(session[:asignatura_params]) #puede que no sea así
    else  
      puts "-------ESTOY PASANDO POR EL PASO SIGUIENTE------------------------------------"
      @asignatura.next_step  
    end  
    session[:asignatura_step] = @asignatura.current_step
    puts "el paso actual es:" + session[:asignatura_step]
    puts "flag = " + flag.inspect
    #puts "los metodos de @asignatura son:" + @asignatura.class.instance_methods.inspect

    if  flag == 0   #Aquí se comprueba si llegamos al final, no hay método como en create
      render 'edit'  
    else
      puts "-------ESTOY PASANDO POR EL else------------------------------------"  
      session[:asignatura_step] = session[:asignatura_params] = nil 
      flash[:notice] = "Asignatura was successfully updated."  
      redirect_to @asignatura
      flag = 0 
    end  
    
    #ESTO ES PROVISIONAL!!!!!!
    #respond_to do |format|
      #if @asignatura.update_attributes(params[:asignatura])
        #format.html { redirect_to @asignatura, notice: 'Asignatura was successfully updated.' }
        #format.json { head :no_content }
      #else
        #format.html { render action: "edit" }
        #format.json { render json: @asignatura.errors, status: :unprocessable_entity }
      #end
    #end
    
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
