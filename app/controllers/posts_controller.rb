class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  before_action :authenticate_user!, except: [:index, :show, :upvote, :downvote]

  def index
    @posts = Post.all.order(:cached_votes_score => :desc).page(params[:page]).per_page(9)
    @user = User.where name: params[:name]
    @tags = Tag.all.order(:name)
    @sizes = Size.all.order(:name)
    @community = Community.where name: params[:name]
    @collection = Collection.where name: params[:name]
  end

  def show
    @comments = Comment.where(post_id: @post)
    @random_post = Post.where.not(id: @post).order("RANDOM()").first
    @random_post2 = Post.where.not(id: @post).order("RANDOM()").second
    @user = User.where name: params[:name]
    @user = User.where avatar: params[:avatar]
    @tag = Tag.where name: params[:name]
    @size = Size.where name: params[:name]
    @community = Community.where name: params[:name]
  end

  def new
    @post = current_user.posts.build
    @tags = Tag.all
    @communities = Community.all
    @user = User.where name: params[:name]
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    @tags = Tag.all
    @communities = Community.all
    @user = User.where name: params[:name]
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def upvote
    @post.upvote_by current_user
    redirect_to :back
  end

  def downvote
    @post.downvote_by current_user
    redirect_to :back
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :link, :description, :image, :tag, :name, :community, :community_id, :collection_id, :screenshot, :screenshot2, :screenshot3, :category, :price, :shoutout_price, :size, :usersize, :tag_id, tag_ids: [])
  end
end
