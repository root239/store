class PostsController < ApplicationController
    # Might use this if need strict permissions -  before_action :authenticate_user!, except: [:user, :show]
    # posts are ordered in descending order
    def index
        @posts = Post.all.order('created_at DESC')
    end
    # links new post
    def new
         @post = Post.new
    end
    # post creation and save
    def create
        @post = Post.new(post_params)
        # if post saved redirect to that post
        # if not saved render new.html.erb again
       if @post.save
            redirect_to @post
        else 
            render 'new'
          end  
        end
        # find post id and display contents
     def show
        @post = Post.find(params[:id])
    end
    
        def edit
        @post = Post.find(params[:id])
         end
         
            def update
                # if permissions and params met, update post
                 @post = Post.find(params[:id])
                 if @post.update(params[:post].permit(:title, :body))
                # redirect if correct, render edit page again if not
                 redirect_to @post
                    else
                     render 'edit'
                    end
                 end
    def destroy
        @post = Post.find(params[:id])
        # find post id, destroy and redirect to main post page
        @post.destroy
        
        redirect_to posts_path
    end
    
    # private define what parameters we are allowing
    
    private
    def post_params
        params.require(:post).permit(:title, :body)
    end
end
