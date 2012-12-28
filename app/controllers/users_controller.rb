class UsersController < ApplicationController
  # GET /regists
  # GET /regists.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /regists/1
  # GET /regists/1.json
  def show
    @users  = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users }
    end
  end

  # GET /regists/new
  # GET /regists/new.json
  def new
    @users = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users }
    end
  end

  # GET /regists/1/edit
  def edit
    @users = User.find(params[:id])
  end

  # POST /regists
  # POST /regists.json
  def create
    @users = User.new(params[:user])

    respond_to do |format|
      if @users.save
        format.html { redirect_to @users, notice: 'Regist was successfully created.' }
        format.json { render json: @users, status: :created, location: @users }
      else
        format.html { render action: "new" }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /regists/1
  # PUT /regists/1.json
  def update
    @users = User.find(params[:id])

    respond_to do |format|
      if @users.update_attributes(params[:regist])
        format.html { redirect_to @users, notice: 'Regist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regists/1
  # DELETE /regists/1.json
  def destroy
    @users = User.find(params[:id])
    @users.destroy

    respond_to do |format|
      format.html { redirect_to regists_url }
      format.json { head :no_content }
    end
  end
end
