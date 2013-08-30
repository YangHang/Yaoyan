class YanlunsController < ApplicationController
  # GET /yanluns
  # GET /yanluns.json
  def index
    @yanluns = Yanlun.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @yanluns }
    end
  end

  # GET /yanluns/1
  # GET /yanluns/1.json
  def show
    @yanlun = Yanlun.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @yanlun }
    end
  end

  # GET /yanluns/new
  # GET /yanluns/new.json
  def new
    @yanlun = Yanlun.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @yanlun }
    end
  end

  # GET /yanluns/1/edit
  def edit
    @yanlun = Yanlun.find(params[:id])
  end

  # POST /yanluns
  # POST /yanluns.json
  def create
    @yanlun = Yanlun.new(params[:yanlun])

    respond_to do |format|
      if @yanlun.save
        format.html { redirect_to @yanlun, notice: 'Yanlun was successfully created.' }
        format.json { render json: @yanlun, status: :created, location: @yanlun }
      else
        format.html { render action: "new" }
        format.json { render json: @yanlun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /yanluns/1
  # PUT /yanluns/1.json
  def update
    @yanlun = Yanlun.find(params[:id])

    respond_to do |format|
      if @yanlun.update_attributes(params[:yanlun])
        format.html { redirect_to @yanlun, notice: 'Yanlun was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @yanlun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yanluns/1
  # DELETE /yanluns/1.json
  def destroy
    @yanlun = Yanlun.find(params[:id])
    @yanlun.destroy

    respond_to do |format|
      format.html { redirect_to yanluns_url }
      format.json { head :no_content }
    end
  end
end
