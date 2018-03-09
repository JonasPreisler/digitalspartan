class CollectionsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /boards
  # GET /boards.json
  def index
    @collection = Collection.all
    @posts = Post.all
  end

  # GET /boards/1
  # GET /boards/1.json
  def show
  end

  # GET /boards/new
  def new
    @collection = current_user.collections.build
  end

  # GET /boards/1/edit
  def edit
  end

  # POST /boards
  # POST /boards.json
  def create
    @collection = current_user.collections.build(collection_params)

    respond_to do |format|
      if @collection.save
        format.html { redirect_to user_path(current_user.name), notice: 'collection was successfully created.' }
        format.json { render :show, status: :created, location: @collection }
      else
        format.html { render :new }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @collection.update(collection_params)
        format.html { redirect_to user_path(current_user.name), notice: 'collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @collection }
      else
        format.html { render :edit }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boards/1
  # DELETE /boards/1.json
  def destroy
    @collection.destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user.username), notice: 'collection was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board
      @collection = Collection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collection_params
      params.require(:collection).permit(:name, :description, :post, :image)
    end

    def correct_user
      @collection = current_user.collections.find_by(id: params[:id])
      redirect_to collections_path, notice: "Not authorized to edit this collection" if @collection.nil?
    end

end
