class ListUsersController < ApplicationController
  before_action :set_list_user, only: [:show, :edit, :update, :destroy]

  # GET /list_users
  # GET /list_users.json
  def index
    @list_users = ListUser.all
  end

  # GET /list_users/1
  # GET /list_users/1.json
  def show
  end

  # GET /list_users/new
  def new
    @list_user = ListUser.new
  end

  # GET /list_users/1/edit
  def edit
  end

  # POST /list_users
  # POST /list_users.json
  def create
    @list_user = ListUser.new(list_user_params)

    respond_to do |format|
      if @list_user.save
        format.html { redirect_to @list_user, notice: 'List user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @list_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @list_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_users/1
  # PATCH/PUT /list_users/1.json
  def update
    respond_to do |format|
      if @list_user.update(list_user_params)
        format.html { redirect_to @list_user, notice: 'List user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @list_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_users/1
  # DELETE /list_users/1.json
  def destroy
    @list_user.destroy
    respond_to do |format|
      format.html { redirect_to list_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_user
      @list_user = ListUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_user_params
      params.require(:list_user).permit(:task_list_id, :user_id)
    end
end
