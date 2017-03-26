class CommentsController < ApplicationController
    def create
        
        # create comment method with name of user and body text
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:comment].permit(:name, :body))
        
        # redirects to all post page
        redirect_to post_path(@post)
	end
	
	def destroy
	    # find post id, find comment id on reference post, destroy
	    @post = Post.find(params[:post_id])
	    @comment = @post.comments.find(params[:id])
	    @comment.destroy
	    
	    redirect_to post_path(@post)
	end
end
