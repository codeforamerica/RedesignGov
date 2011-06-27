class LogotypesController < ApplicationController
  # GET /logotypes
  # GET /logotypes.xml
  def index
    @logotypes = Logotype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @logotypes }
    end
  end

  # GET /logotypes/1
  # GET /logotypes/1.xml
  def show
    @logotype = Logotype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @logotype }
    end
  end

  # GET /logotypes/new
  # GET /logotypes/new.xml
  def new
    @logotype = Logotype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @logotype }
    end
  end

  # GET /logotypes/1/edit
  def edit
    @logotype = Logotype.find(params[:id])
  end

  # POST /logotypes
  # POST /logotypes.xml
  def create
    @logotype = Logotype.new(params[:logotype])

    respond_to do |format|
      if @logotype.save
        format.html { redirect_to(@logotype, :notice => 'Logotype was successfully created.') }
        format.xml  { render :xml => @logotype, :status => :created, :location => @logotype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @logotype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /logotypes/1
  # PUT /logotypes/1.xml
  def update
    @logotype = Logotype.find(params[:id])

    respond_to do |format|
      if @logotype.update_attributes(params[:logotype])
        format.html { redirect_to(@logotype, :notice => 'Logotype was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @logotype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /logotypes/1
  # DELETE /logotypes/1.xml
  def destroy
    @logotype = Logotype.find(params[:id])
    @logotype.destroy

    respond_to do |format|
      format.html { redirect_to(logotypes_url) }
      format.xml  { head :ok }
    end
  end
end
