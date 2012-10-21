class ArchivosController < ApplicationController
  # GET /archivos
  # GET /archivos.json
  def index
#    @archivos = Archivo.all
#     @archivo = Archivo.find(params[:id])
    @archivos = Archivo.where(:idcategoria => params[:idcategoria])
    session[:idcategoria]=params[:idcategoria]
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @archivos }
    end
  end

  # GET /archivos/1
  # GET /archivos/1.json
  def show
    @archivo = Archivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @archivo }
    end
  end

  # GET /archivos/new
  # GET /archivos/new.json
  def new
    @archivo = Archivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @archivo }
    end
  end

  # GET /archivos/1/edit
  def edit
    @archivo = Archivo.find(params[:id])
  end

  # POST /archivos
  # POST /archivos.json
  def create
    @archivo = Archivo.new(params[:archivo])

    respond_to do |format|
      if @archivo.save
        @categoria = Categorium.find(session[:idcategoria])
        @categoria.availableSpace = @categoria.availableSpace - @archivo.size
        @categoria.save
        format.html { redirect_to @archivo, notice: 'File was successfully created.' }
        format.json { render json: @archivo, status: :created, location: @archivo }
      else
        format.html { render action: "new" }
        format.json { render json: @archivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /archivos/1
  # PUT /archivos/1.json
  def update
    @archivo = Archivo.find(params[:id])

    respond_to do |format|
      if @archivo.update_attributes(params[:archivo])
        format.html { redirect_to @archivo, notice: 'File was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @archivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archivos/1
  # DELETE /archivos/1.json
  def destroy
    @archivo = Archivo.find(params[:id])
    @archivo.destroy

    respond_to do |format|
      format.html { redirect_to archivos_url }
      format.json { head :ok }
    end
  end
end
