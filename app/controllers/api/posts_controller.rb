module Api
  class PostsController < ApplicationController
    def new
      @post = Post.new
    end

    def create
      # To be filled in later
    end

    def index
      @index = Post.all.map { |e| {"id" => e.id, "title" => e.title, "date" => e.created_at} }
      render json: @index, status: 200
    end

    def show
      if params[:id] == "0"
        @post = Post.last
      else
        begin
          @post = Post.find(params[:id])
        rescue ActiveRecord::RecordNotFound
          @post = nil
        end
      end
      if @post
        render json: @post, status: 200
      else
        render json: nil, status: 404
      end
    end

    private

      def post_params
        params.require(:post).permit(:title, :content)
      end
  end
end
