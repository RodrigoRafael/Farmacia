class RemediosController < ApplicationController
  # GET /remedios
  # GET /remedios.json
  def index
    @remedios = Remedio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @remedios }
    end
  end

  # GET /remedios/1
  # GET /remedios/1.json
  def show
    @remedio = Remedio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @remedio }
    end
  end

  # GET /remedios/new
  # GET /remedios/new.json
  def new
    @remedio = Remedio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @remedio }
    end
  end

  # GET /remedios/1/edit
  def edit
    @remedio = Remedio.find(params[:id])
  end

  # POST /remedios
  # POST /remedios.json
  def create
    @remedio = Remedio.new(params[:remedio])

    respond_to do |format|
      if @remedio.save
        format.html { redirect_to @remedio, notice: 'Remedio was successfully created.' }
        format.json { render json: @remedio, status: :created, location: @remedio }
      else
        format.html { render action: "new" }
        format.json { render json: @remedio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /remedios/1
  # PUT /remedios/1.json
  def update
    @remedio = Remedio.find(params[:id])

    respond_to do |format|
      if @remedio.update_attributes(params[:remedio])
        format.html { redirect_to @remedio, notice: 'Remedio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @remedio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remedios/1
  # DELETE /remedios/1.json
  def destroy
    @remedio = Remedio.find(params[:id])
    @remedio.destroy

    respond_to do |format|
      format.html { redirect_to remedios_url }
      format.json { head :no_content }
    end
  end
end
