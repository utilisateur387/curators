class CollectionsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @collections = @user.collections
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
