module Api
  module V1
    class PostsController < ApplicationController
      rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

      def index
        posts = Post.post('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded Post', data:posts},status: :ok
      end

      def show
        post = Post.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded Post', data:posts},status: :ok
      end

      def create
        post = Post.new(post_params)
        if post.save
          render json: {status: 'SUCCESS', message:'Saved Post', data:posts },status: :ok
        else
          render json: {status: 'ERROR', message:'Post not saved',
          data:post.errors},status: :unprocessable_entity
        end
      end

      private

      def post_params
        params.permit(:title, :link, :description, :image, :tag, :name, :community, :community_id, :collection_id, :screenshot, :screenshot2, :screenshot3, :category, :price, :shoutout_price, :size, :usersize, :tag_id, tag_ids: [])
      end
    end
  end
end