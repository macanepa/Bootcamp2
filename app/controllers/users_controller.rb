class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_admin!

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @transactions=Transaction.where(user_id: @user.id).order(created_at: :desc)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end


  def get_balance
    rut = params[:rut]
    if User.where(rut: rut).length>0
      respond_to do |f|
        response={balance:User.where(rut: rut).first.balance}
        f.json {render json: response, status: :created}
      end
    else
      respond_to do |f|
        f.json {render json: {balance:"nope"}}
      end
    end
  end

  def login
    rut = params[:rut]
    password = params[:password]
    puts("\n\n\n\n\n\n\n\n#{params}\n\n\n\n\n\n")
    if User.where(rut: rut, password: password).length>0
      respond_to do |f|
        response={logged:true, balance:User.where(rut: rut).first.balance, is_client:User.where(rut: rut).first.is_client}
        f.json {render json: response, status: :created}
      end
    else
      puts("Ohh No")
      respond_to do |f|
        response={logged:false}
        f.json {render json: response, status: :created}
      end
    end
  end

  # POST /users
  # POST /users.json
  def create

    @user = User.new(user_params)
    if @user.balance.nil?
      @user.balance=0
    end

    if @user.is_client.nil?
      @user.is_client = true
    end

    # puts("\n\n\n\n\n\n\n\nWAAAAA\n\n\n\n\n\n\n\n")

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
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
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
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
      params.require(:user).permit(:rut, :password, :balance)
    end
end
