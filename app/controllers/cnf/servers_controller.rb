class Cnf::ServersController < ApplicationController
  # GET /configuration/servers
  # GET /configuration/servers.json
  def index
    @configuration_servers = Cnf::Server.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @configuration_servers }
    end
  end

  # GET /configuration/servers/1
  # GET /configuration/servers/1.json
  def show
    @configuration_server = Cnf::Server.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @configuration_server }
    end
  end

  # GET /configuration/servers/new
  # GET /configuration/servers/new.json
  def new
    @configuration_server = Cnf::Server.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @configuration_server }
    end
  end

  # GET /configuration/servers/1/edit
  def edit
    @configuration_server = Cnf::Server.find(params[:id])
  end

  # POST /configuration/servers
  # POST /configuration/servers.json
  def create
    @configuration_server = Cnf::Server.new(params[:cnf_server])

    respond_to do |format|
      if @configuration_server.save
        format.html { redirect_to @configuration_server, notice: 'Server was successfully created.' }
        format.json { render json: @configuration_server, status: :created, location: @configuration_server }
      else
        format.html { render action: "new" }
        format.json { render json: @configuration_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /configuration/servers/1
  # PUT /configuration/servers/1.json
  def update
    @configuration_server = Cnf::Server.find(params[:id])

    respond_to do |format|
      if @configuration_server.update_attributes(params[:configuration_server])
        format.html { redirect_to @configuration_server, notice: 'Server was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @configuration_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configuration/servers/1
  # DELETE /configuration/servers/1.json
  def destroy
    @configuration_server = Cnf::Server.find(params[:id])
    @configuration_server.destroy

    respond_to do |format|
      format.html { redirect_to config_servers_url }
      format.json { head :ok }
    end
  end
end
