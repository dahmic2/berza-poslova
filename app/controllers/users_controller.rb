class UsersController < ApplicationController
  before_filter :provjera , :except => [:create, :new, :activation]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def activation
    act_hash = params[:act_hash]
    user = User.where(hashed_password: act_hash ).first

    if user.nil?
      redirect_to root_path, :notice => (t "user.does_not_exist")
    else
      user.is_activated = 1
      user.save
      redirect_to root_path, :notice => (t "user.potvrda")
    end


  end



  # GET /users
  # GET /users.json
  #def index
    #@users = User.all
 # end

  # GET /users/1
  # GET /users/1.json
  def show
  end
  def index
    @users = User.find(:all, :conditions => ['name LIKE ?', "%#{params[:query]}%"])
  end
  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end
  #UserMailer.deliver_registration_confirmation(@user)

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
       # UserMailer.deliver_registration_confirmation(@current_user)
        UserMailer.welcome_email(@user).deliver
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :last_name, :email, :password, :adress, :phone, :avatar)
    end

end
