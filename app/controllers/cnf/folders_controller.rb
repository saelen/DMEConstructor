class Cnf::FoldersController < ApplicationController
  
  # GET /folders
  # GET /folders.json
  def index
    #@folders = Cnf::Folder.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @folders }
    end
  end

  # GET /folders/1
  # GET /folders/1.json
  def show
    @folder = Cnf::Folder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @folder }
    end
  end

  # GET /folders/new
  # GET /folders/new.json
  def new
    @folder = Cnf::Folder.new
    @folder.parent_id=parms[:parent_id]
        respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @folder }
    end
  end

  # GET /folders/1/edit
  def edit
    @folder = Cnf::Folder.find(params[:id])
  end

  # POST /folders
  # POST /folders.json
  def create

    @folder = Cnf::Folder.new(params[:cnf_folder])
    respond_to do |format|
      if @folder.save
        format.html { redirect_to @folder, notice: 'Folder was successfully created.' }
        format.json { render json: @folder, status: :created, location: @folder }
      else
        format.html { render action: "new" }
        format.json { render json: @folder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /folders/1
  # PUT /folders/1.json
  def update
    @folder = Cnf::Folder.find(params[:id])

    respond_to do |format|
      if @folder.update_attributes(params[:folder])
        format.html { redirect_to @folder, notice: 'Folder was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @folder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /folders/1
  # DELETE /folders/1.json
  def destroy
    @folder = Cnf::Folder.find(params[:id])
    @folder.destroy

    respond_to do |format|
      format.html { redirect_to cnf_folders_url }
      format.json { head :ok }
    end
  end
end
