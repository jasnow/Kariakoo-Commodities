class SaleTablesController < ApplicationController
  # GET /sale_tables
  # GET /sale_tables.json
  def index
    @sale_tables = SaleTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sale_tables }
    end
  end

  # GET /sale_tables/1
  # GET /sale_tables/1.json
  def show
    @sale_table = SaleTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sale_table }
    end
  end

  # GET /sale_tables/new
  # GET /sale_tables/new.json
  def new
    @sale_table = SaleTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sale_table }
    end
  end

  # GET /sale_tables/1/edit
  def edit
    @sale_table = SaleTable.find(params[:id])
  end

  # POST /sale_tables
  # POST /sale_tables.json
  def create
    @sale_table = SaleTable.new(params[:sale_table])

    respond_to do |format|
      if @sale_table.save
        format.html { redirect_to @sale_table, notice: 'Sale table was successfully created.' }
        format.json { render json: @sale_table, status: :created, location: @sale_table }
      else
        format.html { render action: "new" }
        format.json { render json: @sale_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sale_tables/1
  # PUT /sale_tables/1.json
  def update
    @sale_table = SaleTable.find(params[:id])

    respond_to do |format|
      if @sale_table.update_attributes(params[:sale_table])
        format.html { redirect_to @sale_table, notice: 'Sale table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sale_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_tables/1
  # DELETE /sale_tables/1.json
  def destroy
    @sale_table = SaleTable.find(params[:id])
    @sale_table.destroy

    respond_to do |format|
      format.html { redirect_to sale_tables_url }
      format.json { head :no_content }
    end
  end
end
