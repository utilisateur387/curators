class CollectionsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @number_of_collections = @user.collections.count
    @collections = @user.collections
  end

  def show
    set_collection
    @user = @collection.user
    @number_of_collections = @user.collections.count
    @artworks = @collection.artworks
  end

  def new
    @collection = Collection.new
    @user = current_user
  end

  def create
    @collection = Collection.new(collection_params)
    @collection.user = current_user
    if @collection.save
      redirect_to collection_path(@collection)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    set_collection
    @collection.destroy

    redirect_to user_collections_path(current_user)
  end

  private

  def set_collection
    @collection = Collection.find(params[:id])
  end

  def collection_params
    params.require(:collection).permit(:name)
  end
end
