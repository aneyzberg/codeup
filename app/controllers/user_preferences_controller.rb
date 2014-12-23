class UserPreferencesController < ApplicationController
  before_action :set_user_preference, only: [:show, :edit, :update, :destroy]

  # GET /user_preferences
  # GET /user_preferences.json
  def index
    @user_preferences = UserPreference.where(user_id: current_user.id)
    #find_by(user_id: current_user.id)
    authorize @user_preferences
  end

  # GET /user_preferences/1
  # GET /user_preferences/1.json
  def show

  end

  # GET /user_preferences/new
  def new
    @user_preference = UserPreference.new
    authorize @user_preference

  end

  # GET /user_preferences/1/edit
  def edit
  end

  # POST /user_preferences
  # POST /user_preferences.json
  def create
    @user_preference = UserPreference.new(user_preference_params)
    @user_preference.user = current_user

    authorize @user_preference

    respond_to do |format|
      if @user_preference.save
        format.html { redirect_to @user_preference, notice: 'User profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_preference }
        format.js
      else

        
        format.html { render action: 'new' }
        format.json { render json: @user_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_preferences/1
  # PATCH/PUT /user_preferences/1.json
  def update
    respond_to do |format|
      if @user_preference.update(user_preference_params)
        format.html { redirect_to @user_preference, notice: 'User preference was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_preferences/1
  # DELETE /user_preferences/1.json
  def destroy
    @user_preference.destroy
    respond_to do |format|
      format.html { redirect_to user_preferences_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_preference
      @user_preference = UserPreference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_preference_params
      params.require(:user_preference).permit(:username, :bio, :developer_type, :user_id)
    end

end
