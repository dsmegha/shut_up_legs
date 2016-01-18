class CommentsController < ApplicationController
  def new
  	@comment = Comment.new
  end

  def create
  	@comment = Comment.new(comments_params)  
  	if @comment.save
  		flash[:success] = "Thanks for your message! We will get back to you shortly."
		redirect_to '/contactus'    
	else
      render 'new'
    end
  end
private

    def comments_params
      params.require(:comment).permit(:name, :email, :subject,
                                   :message)
    end
end
