class SaveTablesController < ApplicationController
  # GET /save_tables
  # GET /save_tables.json
  def index
    @save_tables = SaveTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @save_tables }
    end
  end

  # GET /save_tables/1
  # GET /save_tables/1.json
  def show
    @save_table = SaveTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @save_table }
    end
  end

  # GET /save_tables/new
  # GET /save_tables/new.json
  def new
    @save_table = SaveTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @save_table }
    end
  end

  # GET /save_tables/1/edit
  def edit
    @save_table = SaveTable.find(params[:id])
  end

  # POST /save_tables
  # POST /save_tables.json
  def create
    @save_table = SaveTable.new(params[:save_table])

    respond_to do |format|
      if @save_table.save
        format.html { redirect_to @save_table, notice: 'Save table was successfully created.' }
        format.json { render json: @save_table, status: :created, location: @save_table }
      else
        format.html { render action: "new" }
        format.json { render json: @save_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /save_tables/1
  # PUT /save_tables/1.json
  def update
    @save_table = SaveTable.find(params[:id])

    respond_to do |format|
      if @save_table.update_attributes(params[:save_table])
        format.html { redirect_to @save_table, notice: 'Save table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @save_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /save_tables/1
  # DELETE /save_tables/1.json
  def destroy
    @save_table = SaveTable.find(params[:id])
    @save_table.destroy

    respond_to do |format|
      format.html { redirect_to save_tables_url }
      format.json { head :no_content }
    end
  end
end
