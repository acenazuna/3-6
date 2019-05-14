class PostsController < ApplicationController

    def new
         @post = Post.new
    end

    # 以下を追加
    def create
        # ストロングパラメーターを使用
         post = Post.new(post_params)
        # DBへ保存する
         post.save
        # 詳細画面へリダイレクト
        redirect_to post_path(post.id)
    end

    def index
      @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    private

    def post_params
        params.require(:post).permit(:title, :body)
    end
end
