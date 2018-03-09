class CommunitiesController < ApplicationController
  before_action :set_community, only: [:show, :edit, :update, :destroy]

  def index
    @community = Community.all
    @posts = Post.all
  end

  def show
    @community = Community.find(params[:id])
    @title = @community.name
    @post = @community.posts
  end

  def new
    @community = Community.new
  end

  def edit
  end

  def create
    @community = current_user.communities.build(community_params)

    respond_to do |format|
      if @community.save
        format.html { redirect_to user_path(@current_user.username), notice: 'Tag was successfully created.' }
        format.json { render :show, status: :created, location: @community }
      else
        format.html { render :new }
        format.json { render json: @community.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @community.update(community_params)
        format.html { redirect_to @community, notice: 'Community was successfully updated.' }
        format.json { render :show, status: :ok, location: @community }
      else
        format.html { render :edit }
        format.json { render json: @community.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @community.destroy
    respond_to do |format|
      format.html { redirect_to communities_url, notice: 'Community was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_community
      @community = Community.find(params[:id])
    end

    def community_params
      params.require(:community).permit(:name, :post, :image)
    end
end
