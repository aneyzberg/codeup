class UserDevsController < ApplicationController
  before_action :set_user_dev, only: [:show, :edit, :update, :destroy]

  # GET /user_devs
  # GET /user_devs.json
  def index
    @user_devs = UserDev.all
  end

  # GET /user_devs/1
  # GET /user_devs/1.json
  def show
  end

  # GET /user_devs/new
  def new
    @user_dev = UserDev.new
  end

  # GET /user_devs/1/edit
  def edit
  end

  # POST /user_devs
  # POST /user_devs.json
  def create
    @user_dev = UserDev.new(user_dev_params)

    respond_to do |format|
      if @user_dev.save
        format.html { redirect_to @user_dev, notice: 'User dev was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_dev }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_dev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_devs/1
  # PATCH/PUT /user_devs/1.json
  def update
    respond_to do |format|
      if @user_dev.update(user_dev_params)
        format.html { redirect_to @user_dev, notice: 'User dev was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_dev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_devs/1
  # DELETE /user_devs/1.json
  def destroy
    @user_dev.destroy
    respond_to do |format|
      format.html { redirect_to user_devs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_dev
      @user_dev = UserDev.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_dev_params
      params.require(:user_dev).permit(:username, :bio, :developer_type, :user_id)
    end
end
