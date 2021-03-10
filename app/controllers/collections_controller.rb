class CollectionsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @collections = @user.collections
  end

  def show
  end

  def new
    @collection = Collection.new
  end

  def create
    collection = Collection.new(collection_params)
  	collection.owner = current_user
  	if collection.save!
  		redirect_to collections_path
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def collection_params
    params.require(:collection).permit(:name)
  end
end
